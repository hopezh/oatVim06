import bpy
import numpy as np

bpy.ops.mesh.primitive_cube_add(size=4)

cube_obj = bpy.context.active_object

cube_location = cube_obj.location

cube_location.x = 5
cube_location.y = 5
cube_location.z = 5
