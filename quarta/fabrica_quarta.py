import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('/Users/josepaulodasilva/Desktop/DATA SCIENCE/quarta/dados.csv')

# calculando o minimo, maximo e media

min_matematica = df['math score'].min()
max_matematica = df['math score'].max()
mean_matematica = df['math score'].mean()

min_leitura = df['reading score'].min()
max_leitura = df['reading score'].max()
mean_leitura = df['reading score'].mean()

min_escrita = df['writing score'].min()
max_escrita = df['writing score'].max()
mean_escrita = df['writing score'].mean()

print(f'Matemática: Min = {min_matematica}, Max = {max_matematica}, Média = {mean_matematica}')
print(f'Leitura: Min = {min_leitura}, Max = {max_leitura}, Média = {mean_leitura}')
print(f'Escrita: Min = {min_escrita}, Max = {max_escrita}, Média = {mean_escrita}')

# criando grafico 1

media_notas = df.groupby('race/ethnicity')['math score'].mean().reset_index()

plt.bar(media_notas['race/ethnicity'], media_notas['math score'], color='blue')
plt.xlabel('race/ethnicity')
plt.ylabel('math score median')
plt.title('Nota Média em Matemática por Raça/Etnia')

plt.show()

# criando grafico 2

media_escrita = df.groupby('parental level of education')['writing score'].mean().reset_index()

plt.bar(media_escrita['parental level of education'], media_escrita['writing score'], color='grey')
plt.xlabel('parental level of education')
plt.ylabel('writing score')
plt.title('Nota Média em Escrita por Nível de Escolaridade dos Pais')

plt.show()

#criando o grafico 3

media_leitura = df.groupby('test preparation course')['reading score'].mean().reset_index()

plt.bar(media_leitura['test preparation course'], media_leitura['reading score'], color='navy')
plt.xlabel('test preparation course')
plt.ylabel('reading score')
plt.title('Nota Média em Leitura por Participação em Curso Preparatório')

plt.show()

