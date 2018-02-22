from setuptools import setup, find_packages

auth = 'x-token-auth:Y0mGCgxVQjKSwm1Fo0QkCFwqu3oG6J8qoiXcO3VPHQ4W_EBNqiOBgpN0TwFPml1uUAiioK5vYr5iQlVizJA=@'
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
