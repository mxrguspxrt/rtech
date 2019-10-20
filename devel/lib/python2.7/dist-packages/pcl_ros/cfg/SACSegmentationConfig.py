## *********************************************************
##
## File autogenerated for the pcl_ros package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'The maximum number of iterations the algorithm will run for', 'max': 100000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_iterations', 'edit_method': '', 'default': 50, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'The desired probability of choosing at least one sample free from outliers', 'max': 0.99, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'probability', 'edit_method': '', 'default': 0.99, 'level': 0, 'min': 0.5, 'type': 'double'}, {'srcline': 291, 'description': 'The distance to model threshold', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'distance_threshold', 'edit_method': '', 'default': 0.02, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'Model coefficient refinement', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'optimize_coefficients', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'The minimum allowed model radius (where applicable)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'radius_min', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'The maximum allowed model radius (where applicable)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'radius_max', 'edit_method': '', 'default': 0.05, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'The maximum allowed difference between the model normal and the given axis in radians.', 'max': 1.5707, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eps_angle', 'edit_method': '', 'default': 0.17, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'The minimum number of inliers a model must have in order to be considered valid.', 'max': 100000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_inliers', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'The input TF frame the data should be transformed into, if input.header.frame_id is different.', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'input_frame', 'edit_method': '', 'default': '', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'The output TF frame the data should be transformed into, if input.header.frame_id is different.', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/usr/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'output_frame', 'edit_method': '', 'default': '', 'level': 0, 'min': '', 'type': 'str'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

