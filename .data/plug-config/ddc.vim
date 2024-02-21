vim9script

ddc#custom#patch_global({
  ui: 'native',

  sources: [ 'omni', 'vsnip', 'around', 'buffer', 'file', ],

  sourceOptions: {
    _: {
      matchers: ['matcher_head'],
      sorters: ['sorter_rank'],
      minAutoCompleteLength: 1,
    },

    around: {
      mark: 'A',
    },

    vim: {
      mark: 'V',
    },

    vsnip: {
      mark: 'S',
    },

    omni: {
      mark: 'O',
    },

    file: {
      mark: 'F',
      isVolatile: true,
      forceCompletionPattern: '\S/\S*',
    },

    buffer: {
      mark: 'B',
    },
  },

  sourceParams: {
    around: {
      maxSize: 500,
    },

    buffer: {
      requireSameFiletype: false,
      limitBytes: 5000000,
      fromAltBuf: true,
      forceCollect: true,
    },
  },
})

ddc#custom#patch_filetype('vim', {
  sources: [ 'omni', 'around', 'vim', 'file', 'buffer', ],
})

# ddc#custom#patch_filetype(['c', 'cpp'], {
#   sources: ['around', 'clangd'],
#   sourceOptions: {
#     clangd: {
#       mark: 'C',
#     },
#   },
# })

ddc#custom#patch_filetype('markdown', {
  sourceParams: {
    around: {
      maxSize: 100
    },
  },
})

ddc#enable()
