using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jayakumar.Limerick
{
    public class Reverser
    {
        private readonly string _sourceFile;
        private readonly List<string> _textLineList;
        private readonly string _outputFilepath;
        private string _singleLine;

        public Reverser(string fileSource, string outputFilepath)
        {
            _sourceFile = fileSource;
            _outputFilepath = outputFilepath;
            _textLineList = new List<string>();
        }

        public void ReadLineByLine()
        {
            var file = new StreamReader(_sourceFile);
            while ((_singleLine = file.ReadLine()) != null)
            {
                _textLineList.Add(_singleLine);
            }
        }

        public void ReverseIt()
        {
            _textLineList.Reverse();
        }

        public void WriteOutPutFile()
        {
            File.WriteAllLines(_outputFilepath, _textLineList);
        }

    }
}
