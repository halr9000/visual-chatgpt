git clone https://github.com/lllyasviel/ControlNet.git
# ln -s ControlNet/ldm ./ldm
new-item -ItemType SymbolicLink -Target ControlNet/ldm -Path ./ldm
# ln -s ControlNet/cldm ./cldm
new-item -ItemType SymbolicLink -Target ControlNet/cldm -Path ./cldm
# ln -s ControlNet/annotator ./annotator
New-Item -ItemType SymbolicLink -Target ControlNet/annotator -Path ./annotator
cd ControlNet/models
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_canny.pth
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_depth.pth
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_hed.pth
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_mlsd.pth
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_normal.pth
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_openpose.pth
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_scribble.pth
Start-BitsTransfer -Source https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_seg.pth
cd ../../
