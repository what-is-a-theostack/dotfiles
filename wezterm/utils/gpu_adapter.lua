UnDo
3   local gpu_adapters = setmetatable(initial, self)
   if no
      preferred_b
l---   1. Best GPU available (Discrete > Integrated > Other (for wgpu's OpenGl implementation on Discrete GPU
   windows = { 'Dx12', 
"local wezterm = require('wezterm')
*local platform = require('utils.platform')
(   windows = { 'Dx12', 'Vulkan', 'Gl' },
   linux = { 'Vulkan', 'Gl' },
   mac = { 'Metal' },
   local initial = {
8      __backends = self.AVAILABLE_BACKENDS[platform.os],
D      __preferred_backend = self.AVAILABLE_BACKENDS[platform.os][1],
      DiscreteGpu = nil,
      IntegratedGpu = nil,
      Cpu = nil,
      Other = nil,
   }
O   -- iterate over the enumerated GPUs and create a lookup table (`AdapterMap`)
4   for _, adapter in ipairs(self.ENUMERATED_GPUS) do
.      if not initial[adapter.device_type] then
*         initial[adapter.device_type] = {}
      end
=      initial[adapter.device_type][adapter.backend] = adapter
   end
3   local gpu_adapters = setmetatable(initial, self)
   return gpu_adapters
,   local adapters_options = self.DiscreteGpu
5   local preferred_backend = self.__preferred_backend
   if not adapters_options then
+      adapters_options = self.IntegratedGpu
   end
   if not adapters_options then
#      adapters_options = self.Other
      preferred_backend = 'Gl'
   end
   if not adapters_options then
!      adapters_options = self.Cpu
   end
   if not adapters_options then
H      wezterm.log_error('No GPU adapters found. Using Default Adapter.')
      return nil
   end
=   local adapter_choice = adapters_options[preferred_backend]
   if not adapter_choice then
R      wezterm.log_error('Preferred backend not available. Using Default Adapter.')
      return nil
   end
   return adapter_choice
-   local adapters_options = self[device_type]
   if not adapters_options then
H      wezterm.log_error('No GPU adapters found. Using Default Adapter.')
      return nil
   end
3   local adapter_choice = adapters_options[backend]
   if not adapter_choice then
R      wezterm.log_error('Preferred backend not available. Using Default Adapter.')
      return nil
   end
   return adapter_choice5
