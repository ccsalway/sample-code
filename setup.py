from setuptools import setup, find_packages

auth = ''
scm = "git+https://%sbitbucket.org/naimuri/" % auth

setup(
    name='sample-code',
    version='1.0',
    description='Sample Code for learning',
    author='Christian Salway',
    packages=find_packages(),
    install_requires=['nose', 'coverage', 'pylint', 'cyrm_common', 'cyrm_python_tools_framework'],
    dependency_links=[
        scm + "cyrm_common/master#egg=cyrm_common",
        scm + "cyrm_python_tools_framework/master#egg=cyrm_python_tools_framework"
    ]
)
