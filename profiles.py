from addict import Dict


_profiles = {
    'vse': {
        'lr': 1e-3,
        'margin': 0.2,
        'latent_size': 1024,
        'grad_clip': 2.,
        'text_encoder': 'gru',
        'image_encoder': 'vsepp_precomp',
        'text_pooling': 'lens',
        'text_repr': 'word',
        'lr_decay_interval': 15,
        'lr_decay_rate': 0.1,
        'early_stop': 5,
        'nb_epochs': 30,
        'max_violation': False,
        'initial_k': 0,
        'increase_k': 0,
    },
    'vsepp': {
        'lr': 2e-4,
        'margin': 0.2,
        'latent_size': 1024,
        'grad_clip': 2.,
        'text_encoder': 'gru',
        'text_pooling': 'lens',
        'image_encoder': 'vsepp_pt',
        'image_pooling': 'none',
        'text_repr': 'word',
        'lr_decay_interval': 15,
        'lr_decay_rate': 0.1,
        'max_violation': True,
        'sim': 'cosine',
    },
    'vsepp_finetune': {
        'lr': 2e-5,
        'margin': 0.2,
        'latent_size': 1024,
        'grad_clip': 2.,
        'text_encoder': 'gru',
        'text_pooling': 'lens',
        'image_encoder': 'vsepp_ft',
        'image_pooling': 'mean',
        'text_repr': 'word',
        'lr_decay_interval': 15,
        'lr_decay_rate': 0.1,
        'early_stop': 30,
        'nb_epochs': 30,
        'max_violation': True,
        'sim': 'cosine',
        'finetune': True,
    },
    'scan': {
        'lr': 2e-4,
        'margin': 0.2,
        'latent_size': 1024,
        'grad_clip': 2.,
        'text_encoder': 'scan',
        'image_encoder': 'scan',
        'text_pooling': 'none',
        'image_pooling': 'none',
        'text_repr': 'word',
        'lr_decay_interval': 15,
        'lr_decay_rate': 0.1,
        'early_stop': 30,
        'nb_epochs': 30,
        'beta': 0.,
    },
    'clmr': {
        'lr': 6e-4,
        'margin': 0.2,
        'latent_size': 1024,
        'grad_clip': 2.,
        'text_encoder': 'convgru_sa',
        'image_encoder': 'hierarchical',
        'text_pooling': 'mean',
        'text_repr': 'word',
        'early_stop': 5,
        'nb_epochs': 30,
        'initial_k': 0.9,
        'increase_k': 0.1,
    },
    'liwe': {
        'lr': 6e-4,
        'margin': 0.2,
        'latent_size': 1024,
        'grad_clip': 2.,
        'workers': 2,
        'text_encoder': 'liwe_gru_256',
        'image_encoder': 'hierarchical',
        'text_pooling': 'mean',
        'text_repr': 'liwe',
        'nb_epochs': 45,
        'beta': 0.991,
        'vocab_path': 'vocab/char.json',
    },
}

_profiles = Dict(_profiles)


def get_profile_names():
    return _profiles.keys()


def get_profile(profile):
    return _profiles[profile]
