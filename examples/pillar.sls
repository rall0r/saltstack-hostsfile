# Please note the declaration of the host names as lists!)!
hosts:
  saltmaster: 10.0.0.1

  hosts.present:
    '10.10.10.10':
      - foo
    '10.10.10.11':
      - bar
    '10.10.10.12':
      - aaa
      - bbb
      - ccc

  hosts.absent:
    '10.10.10.13':
      - baz
