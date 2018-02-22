from setuptools import setup, find_packages

auth = 'x-token-auth:KQmv4sMLHVf3t6sKaUpD8SirX7iA59U1jGEhvkEWNlJgKVlQlIJx76wydAc9jrhnhqd-PXlMom1KXgmguuw=@'
scm = "git+https://%sbitbucket.org/naimuri/" % auth

setup(
    name='sample-code',
    version='1.0',
    description='Sample Code for learning',
    author='Christian Salway',
    packages=find_packages(),
    install_requires=[
        # this first line should be in all tools
        'cyrm_common', 'cyrm_python_tools_framework', 'nose', 'coverage', 'pylint',
        # add extra packages below
        # requests, dnspython, ...
    ],
    dependency_links=[
        scm + "cyrm_common/master#egg=cyrm_common",
        scm + "cyrm_python_tools_framework/master#egg=cyrm_python_tools_framework"
    ]
)
