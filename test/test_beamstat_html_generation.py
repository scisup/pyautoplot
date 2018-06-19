import unittest
from scripts.create_html import station_beamlet_statistics_plots_html, create_plot_per_station

file_list = ['inspect/657816/beamlets_CS001C_00.png',
             'inspect/657816/beamlets_CS001C_01.png',
             'inspect/657816/beamlets_CS001C_00_norm.png',
             'inspect/657816/beamlets_CS001C_01_norm.png',
             'inspect/657816/beamlets_CS011C_00.png',
             'inspect/657816/beamlets_CS011C_01.png',
             'inspect/657816/beamlets_CS011C_00_norm.png',
             'inspect/657816/beamlets_CS011C_01_norm.png',
             'inspect/657816/beamlets_RS011C_00.png',
             'inspect/657816/beamlets_RS011C_01.png',
             'inspect/657816/beamlets_RS011C_00_norm.png',
             'inspect/657816/beamlets_RS011C_01_norm.png',
             'inspect/657816/beamlets_PL011C_00.png',
             'inspect/657816/beamlets_PL011C_01.png',
             'inspect/657816/beamlets_PL011C_00_norm.png',
             'inspect/657816/beamlets_PL011C_01_norm.png',
             ]
class TestBeamletStatistics(unittest.TestCase):
    def test_beamlet_generation(self):
        parset = dict(sas_id= 54321)

        with open('test.html', 'w') as fwrite:
            fwrite.write(station_beamlet_statistics_plots_html(parset, file_list))

if __name__ == '__main__':
    unittest.main()