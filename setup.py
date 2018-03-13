from setuptools import setup, find_packages

AUTH = ''
BITBUCKET_REPO = 'git+https://%sbitbucket.org/naimuri/' % AUTH

NAIMURI_DEPENDENCIES = {
    'cyrm_common': 'cyrm_common',
    'cyrm_python_tools_framework': 'cyrm_python_tools_framework'
}

setup(
    name='sample-code',
    version='1.0.0',
    description='Sample Code for learning',
    author='Christian Salway',
    packages=find_packages(),
    install_requires=NAIMURI_DEPENDENCIES.values() + [
        'nose', 'coverage', 'pylint'
    ],
    dependency_links=[
        BITBUCKET_REPO + repo + '/gocd#egg=' + egg for repo, egg in NAIMURI_DEPENDENCIES.iteritems()
    ]
)
