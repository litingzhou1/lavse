import argparse
from addict import Dict
from lavse.model.similarity.factory import get_sim_names
from lavse.model import imgenc, txtenc
import profiles


def get_train_params():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        'options',
    )
    parser.add_argument('--local_rank', type=int, default=0)

    args = parser.parse_args()
    args = Dict(vars(args))
    return args


def get_test_params():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        'options',
    )
    parser.add_argument(
        '--device', default='cuda',
    )
    parser.add_argument(
        '--data_split', '-s', default='dev'
    )
    parser.add_argument(
        '--outpath', '-o', default=None
    )

    args = parser.parse_args()
    args = Dict(vars(args))
    return args
