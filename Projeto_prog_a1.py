#Caio Leonado Do Nascimento Mesquita & Valmir Almeida de Santana
import datetime
def criarlog(user,ato,log):
    data = datetime.datetime.today()
    string =(str(user)+"\t"+str(ato)+"\t"+str(data)+"\n")
    log.write(string)
    log.close()
def excluirCadastro(dic):
    x = input("insira o login permitido para excluir um cadastro:\n")
    y = input("insira a senha permitida:\n")
    if x == "ADM" and y == "ADM" or x == "adm" and y == "adm":
        r = input("insira um usuário a ser removido:\n")
        if r in dic:
            dic.pop(r)
            log = open("log.txt","a")
            criarlog(x,"excluiu"+" "*3+str(r),log)
            log.close
    arq = open("usuarios.txt","w")
    for x in dic:
        arq.write(x)
        arq.write("\n")
        arq.write(dic[x])
        arq.write("\n")
        arq.close
    print("\n"*50)

def bubbleSort(A):
    if len(A) <= 1:
        sA = A
    else:
        for j in range(0,len(A)):
            for i in range(0,len(A)-1):
                if A[i]>A[i+1]:
                    Aux = A[i+1]
                    A[i+1] = A[i]
                    A[i] = Aux
        sA = A

    return sA

def imprimirElementos(dic):
    impr = open("impressaoelementos.txt","w")
    listaDeChaves = dic.keys()
    listaAux = []
    for iten in listaDeChaves:
        listaAux.append(iten)
    listaDeChaves = bubbleSort(listaAux)
    for x in listaDeChaves:
       impr.write("cpf: "+x+"   "+"paciente: "+str(dic[x])+"\n")
    impr.close
    
def cadastro(dic):
    x = input("insira o login permitido para criar um cadastro:\n")
    y = input("insira a senha permitida:\n")
    if x == "ADM" and y == "ADM" or x == "adm" and y == "adm":
        cadastrar = True
        while cadastrar:
            user = input("insira um nome de usuário:\n")
            if user in dic:
                print("nome de usuário inváido")
            else:
                senha = input("insira uma senha:\n")
                dic[user] = senha
                cadastrar = False
        log = open("log.txt","a")
        criarlog(x,"cadastrou"+" "*3+str(user),log)
        log.close
        arq = open("usuarios.txt","w")
        for x in dic:
            arq.write(x)
            arq.write("\n")
            arq.write(dic[x])
            arq.write("\n")
        arq.close
    else:
        print("\n"*50)
        print("CRIAÇÃO DE CADASTRO NÃO PERMITIDA")
        print("\n")   

def login(dic):
    logar = True
    continua = "s"
    while logar:
        user = input("insira seu nome de usuário:\n")
        if user not in dic:
            print("NOME DE USUÁRIO NÃO ENCONTRADO\n")
            continuar = input("DESEJA TENTAR OUTRO NOME DE USUÁRIO?(s/n)\n")
            if continuar == "s":
                continue
            elif continuar == "n":
                return False
            else:
                print("OPÇÃO NÃO ENCONTRADA")
                return False
                
        else:
            senha = input("INSIRA SUA SENHA:\n")
            logar = False
    
    if user in dic:
        for i in dic:
            if dic[i] == senha:
                print("\n"*30)
                print("Bem Vindo,"+user)
                print("\n")
                log = open("log.txt","a")
                criarlog(user,"logou",log)
                log.close
                return user
        else:
            print("NOME DE USUÁRIO OU SENHA INCORRETA")
            return False
    


def cadastrarPaciente(dic,a,contImc,quantImc):
    cpf = input("CPF DO PACIENTE:\n")
    if cpf in dic:
            mudar = input("ESTE PACIENTE JA FOI CADASTRADO, DESEJA ATUALIZAR?(s/n)")
            if mudar == "s":
                nome = input("NOME DO PACIENTE:\n")
                idade = (input("IDADE:\n"))
                altura = int(input("ALTURA(cm):\n"))
                peso = int(input("PESO(kg):\n"))
                doença = input("DIAGNÓSTICO:\n")
                dia = input("DIA DE ENTRADA:\n")
                mes = input("MES DE ENTRADA:\n")
                ano = input("ANO DE ENTRADA:\n")
                dataent = (dia+"/"+mes+"/"+ano)
                imc = str(peso//(altura/100)**2)
                imc2 = (peso//(altura/100)**2)
                dic[cpf] = (nome,idade,str(altura),str(peso),doença,dataent,imc)
                quantImc += 1
                contImc += imc2
                arq = open("elementos.txt","w")
                for x in dic:
                    arq.write(x)
                    arq.write("\n")
                    arq.write(str(dic[x]))
                    arq.write("\n")
                arq.close
                log = open("log.txt","a")
                criarlog(a,"atualizou"+" "*3+str(nome),log)
                log.close

                
            elif mudar == "n":
                return False
            elif mudar != "s" and mudar != "n":
                print("*"*5+"ERRO"+"*"*5+"\n"+"*"*2+"OPÇÃO NÃO ENCONTRADA"+"*"*2)
                return False
    else:
            nome = input("NOME DO PACIENTE:\n")
            idade = input("IDADE:\n")
            altura = int(input("ALTURA(cm):\n"))
            peso = int(input("PESO(kg):\n"))
            doença = input("DIAGNÓSTICO:\n")
            dia = input("DIA DE ENTRADA:\n")
            mes = input("MES DE ENTRADA:\n")
            ano = input("ANO DE ENTRADA:\n")
            dataent = (dia+"/"+mes+"/"+ano)
            imc = str(peso//(altura/100)**2)
            imc2 = (peso//(altura/100)**2)
            dic[cpf] = (nome,idade,str(altura),str(peso),doença,dataent,imc)
            quantImc += 1
            contImc += imc2
            arq = open("elementos.txt","w")
            for x in dic:
                arq.write(x)
                arq.write("\n")
                arq.write(str(dic[x]))
                arq.write("\n")
            arq.close
            log = open("log.txt","a")
            criarlog(a,"cadastrou"+" "*3+str(nome),log)
            log.close

    print("\n"*50)
    
contImc = 0 
quantImc = 0

def atualizarPaciente(dic,a,contImc,quantImc):
    cpf1 = input("CPF DO PACIENTE QUE DESEJA ALTERAR:\t")
    if cpf1 in dic:
        x = input("O CPF ESCOLHIDO ESTÁ CADASTRADO, DESEJA ALTERAR OU MANTER ESTE CPF?(alterar/manter)\n")
        if x == "alterar":
            dic.pop(cpf1)
            cpf = input("NOVO CPF:\n")
            nome = input("NOME DO PACIENTE:\n")
            idade = input("IDADE:\n")
            altura = int(input("ALTURA(cm):\n"))
            peso = int(input("PESO(kg):\n"))
            doença = input("DIAGNÓSTICO:\n")
            dia = input("DIA DE ENTRADA:\n")
            mes = input("MES DE ENTRADA:\n")
            ano = input("ANO DE ENTRADA:\n")
            dataent = (dia+"/"+mes+"/"+ano)
            imc = str(peso//(altura/100)**2)
            imc2 = (peso//(altura/100)**2)
            dic[cpf] = (nome,idade,str(altura),str(peso),doença,dataent,imc)
            quantImc += 1
            contImc += imc2
            arq = open("elementos.txt","w")
            for x in dic:
                arq.write(x)
                arq.write("\n")
                arq.write(str(dic[x]))
                arq.write("\n")
            arq.close
            log = open("log.txt","a")
            criarlog(a,"ATUALIZOU"+" "*3+str(nome),log)
            log.close
        elif x == "manter":
            nome = input("NOME DO PACIENTE:\n")
            idade = input("IDADE:\n")
            altura = int(input("ALTURA(cm):\n"))
            peso = int(input("PESO(kg):\n"))
            doença = input("DIAGNÓSTICO:\n")
            dia = input("DIA DE ENTRADA:\n")
            mes = input("MES DE ENTRADA:\n")
            ano = input("ANO DE ENTRADA:\n")
            dataent = (dia+"/"+mes+"/"+ano)
            imc = str(peso//(altura/100)**2)
            imc2 = (peso//(altura/100)**2)
            dic[cpf1] = (nome,idade,str(altura),str(peso),doença,dataent,imc)
            quantImc += 1
            contImc += imc2
            arq = open("elementos.txt","w")
            for x in dic:
                arq.write(x)
                arq.write("\n")
                arq.write(str(dic[x]))
                arq.write("\n")
            arq.close
            log = open("log.txt","a")
            criarlog(a,"ATUALIZOU"+" "*3+str(nome),log)
            log.close
        else:
            print("OPÇÃO NÃO ENCONTRADA")
            return False
    else:
        print("O CPF INSERIDO NÃO ESTÁ CADASTRADO")
        return False
    
def removerPaciente(dic,a):
    x = input("TEM CERTEZA QUE DESEJA REMOVER O PACIENTE?(s/n)\n")
    if x == "s":
        paciente = input("insira o CPF do paciente a ser removido:\n")
        if paciente in dic:
              dic.pop(paciente)
              arq = open("elementos.txt","w")
              for x in dic:
                arq.write(x)
                arq.write("\n")
                arq.write(str(dic[x]))
                arq.write("\n")
              arq.close
              log = open("log.txt","a")
              criarlog(x,"excluiu"+" "*3+str(paciente),log)
              log.close
    elif x == "n":
        print("\n"*30)
        return False
    else:
        print("\n"*30)
        print("*"*5+"ERRO"+"*"*5+"\n"+"*"*2+"OPÇÃO NÃO ENCONTRADA"+"*"*2)
        return False
    
def tiraEspaco(arq):
    lista = arq.readlines()
    stringAux = ""
    listaAux = []
    for item in lista:
        for letra in item:
            if (letra == "\n" or letra =="\t" or letra==" "):                         
                listaAux.append(stringAux)
                stringAux = ""
            else:
                stringAux = stringAux + str(letra)
    listaAux.append(stringAux)
    return listaAux

def tiraBarraN(arq):
    lista = arq.readlines()
    stringAux = ""
    listaAux = []
    for item in lista:
        for letra in item:
            if (letra == "\n"):                         
                listaAux.append(stringAux)
                stringAux = ""
            else:
                stringAux = stringAux + str(letra)
    listaAux.append(stringAux)
    return listaAux
    

def mostrarCadastros(dic):
    useradm = input("AGUARDANDO NOME DE USUÁRIO PERMITIDO...\n")
    if useradm == "ADM" or useradm == "adm":
        senhaadm = input("AGUARDANDO SENHA PERMITIDA...\n")
        if senhaadm == "ADM" or senhaadm == "adm":
            print("\n"*40)
            print("NOMES DE USUÁRIO CADASTRADOS:")
            for i in dic:
                print("usuário:"+" "+i+";"+" "+"senha:"+" "+dic[i])
            
    else:
        print("NOME DE USUÁRIO NÃO PERMITIDO")
        return False
    print("\n"*10)

def buscaCadastro(dic):
    x = input("NOME DE USUÁRIO A SER BUSCADO:\n")
    if x in dic:
        print("\n"*50)
        print("USUÁRIO ENCONTRADO")
        print("\n"*1)
        
def buscaPaciente(dic,a):
    bpaciente = input("CPF DO PACIENTE A SER BUSCADO:\n")
    log = open("log.txt","a")
    criarlog(a,"buscou"+" "*3+str(bpaciente),log)
    log.close
    for i in dic:
        if i == bpaciente:
            print("\n"*50)
            print("PACIENTE ENCOTRADO")
            print(dic[bpaciente])
            return True
        else:
            print("PACIENTE NÃO ECONTRADO")

def transformaEmInformação(dic,a):
    print("\n"*30)
    listaAux = []
    palavraAux = " "
    listaAux2 = []
    for i in dic:
        for k in dic[i]:
            if k != "(" and k != "'" and k != "," and k != "\n" and k != ")" and k != " "and k != '':
                palavraAux = palavraAux + k
            else:
                listaAux.append(palavraAux)
                palavraAux = ""
    for x in listaAux:
        if x != '':
            listaAux2.append(x)
    cont1 = 1
    cont2 = 2
    cont3 = 3
    cont4 = 4
    cont5 = 5
    cont6 = 6
    cont7 = 7
    andador = 0
    print("PACIENTES CADASTRADOS:")
    while andador < len(listaAux2):
        print("\n"*2)
        print("NOME:"+" "+listaAux2[cont1])
        print("IDADE:"+" "+listaAux2[cont2])
        print("ALTURA(cm):"+" "+listaAux2[cont3])
        print("PESO(kg):"+" "+listaAux2[cont4])
        print("DIAGNÓSTICO:"+" "+listaAux2[cont5])
        print("DATA DE ENTRADA:"+" "+listaAux2[cont6])
        print("IMC:"+" "+listaAux2[cont7])
        cont1 +=7
        cont2 +=7
        cont3 +=7
        cont4 +=7
        cont5 +=7
        cont6 +=7
        cont7 +=7
        andador +=7
        if andador+1 == len(listaAux2):
            log = open("log.txt","a")
            criarlog(a,"IMPRIMIU"+" "*3+"PACIENTES",log)
            log.close
            print("\n")
            return "FIM!"

def imprimirCpfPaciente(dic,a):
    print("\n"*30)
    print("CPF'S DOS PACIENTES CADASTRADOS")
    print("\n")
    for x in dic:
        print(x)
        print("\n")
    log = open("log.txt","a")
    criarlog(a,"IMPRIMIU CPF's",log)
    log.close
    
        
    
def menuDeLogin(a):
    pacientes = True
    while pacientes:
            print("I"+"*"*62+"I")
            print("I"+"="*19+" "+"CADASTRAR PACIENTE(1)"+" "+"="*20+"I")
            print("I"+"="*20+" "+"REMOVER PACIENTE(2)"+" "+"="*21+"I")
            print("I"+"="*21+" "+"BUSCAR PACIENTE(3)"+" "+"="*21+"I")
            print("I"+"="*19+" "+"IMPRIMIR PACIENTES(4)"+" "+"="*20+"I")
            print("I"+"="*20+" "+"IMPRIMIR CPF's(5)"+" "+"="*23+"I")
            print("I"+"="*19+" "+"IMPRIMIR ELEMENTOS(6)"+" "+"="*20+"I")
            print("I"+"="*23+" "+"MEDIA IMC's(7)"+" "+"="*23+"I")
            print("I"+"="*20+" "+"ATUALIZAR PACIENTE(8)"+" "+"="*19+"I")
            print("I"+"="*26+" "+"SAIR(9)"+" "+"="*27+"I")
            print("I"+"*"*62+"I")
            entrada = input("AGUARDANDO...\n")
            if entrada == "1":
                cadastrarPaciente(dicDePaciente,a,contImc,quantImc)
            elif entrada == "2":
                removerPaciente(dicDePaciente,a)
            elif entrada == "3":
                buscaPaciente(dicDePaciente,a)
            elif entrada == "4":
                transformaEmInformação(dicDePaciente,a)
            elif entrada == "5":
                imprimirCpfPaciente(dicDePaciente,a)
            elif entrada == "6":
                imprimirElementos(dicDePaciente)
            elif entrada == "7":
                mediaImc(contImc,quantImc)
            elif entrada == "8":
                atualizarPaciente(dicDePaciente,a,contImc,quantImc)
            elif entrada == "9":
                confirmação = input("deseja mesmo sair?(s/n)\n")
                log = open("log.txt","a")
                criarlog(a,"saiu",log)
                log.close

                if confirmação == "s":
                    pacientes = False
                elif confirmação == "n":
                    continue
                else:
                    print("OPÇÃO NÃO ENCONTRADA")
                    continue
            else:
                print("\n"*30)
                print("OPÇÃO NÃO ENCONTRADA")
                print("\n")
    print("\n"*50)

def mediaImc(contImc, quantImc):
    if quantImc == 0:
        print("\n"*30)
        print("IMPOSSIVEL CALCULAR A MEDIA DOS IMC's")
        return False
    print("\n"*30)
    print("MÉDIA DE TODOS IMC's JA CADASTRADOS NO HOSPITAL:\n" (int(contImc)/quantImc))
    print("\n")



def buscarNoLog():
    log = open("log.txt","r")
    listaAux = tiraEspaco(log)
    cont = 0
    log.close()
    listaImpressao = []
    flag = False
    buscador = input("DIGITE ''u'' PARA BUSCAR USUÁRIO OU ''d'' PARA BUSCAR POR DATA:\n")
    if(buscador=="u"):
        usu = input("NOME DE USUÁRIO A SER BUSCADO:\n")
        for i in listaAux:
            if(usu == i):
                listaImpressao.append(i+"  "+listaAux[cont+1]+"  "+listaAux[cont+2]+"  "+listaAux[cont+3])
                flag = True
            cont+=1
    elif(buscador=="d"):
            dia = input("DIA:\n")
            mes = input("MÊS:\n")
            ano = input("ANO:\n")
            dat = (ano+"-"+mes+"-"+dia)
            for y in listaAux:
                if(dat == y):
                    listaImpressao.append(listaAux[cont-2]+"  "+listaAux[cont-1]+"  "+y+"  "+listaAux[cont+1])
                    flag = True
                cont+=1
    if(flag):
        for x in listaImpressao:
            print(x)
    else:
        print("OPÇÃO NÃO ENCONTRADA")
        
arq = open("usuarios.txt","r")
dicDeCadastro = {}
k = tiraEspaco(arq)
i = 0
j = 1
for _ in range(len(k)-1):
    if j < len(k):
        dicDeCadastro[k[i]] = k[j]
        i += 2
        j += 2
arq.close


arq1 = open("elementos.txt","r")
dicDePaciente = {}
k = tiraBarraN(arq1)
i = 0
j = 1
for _ in range(len(k)-1):
    if j < len(k):
        dicDePaciente[k[i]] = k[j]
        i += 2
        j += 2
arq1.close


    
menu = True
while(menu):
    print("I"+"*"*62+"I")
    print("I"+"="*22+" "+"HOSPITAL TOPZERA"+" "+"="*22+"I")
    print("I"+"*"*62+"I")
    print("I"+"="*24+" "+"CADASTRAR(1)"+" "+"="*24+"I")
    print("I"+"="*26+" "+"LOGAR(2)"+" "+"="*26+"I")
    print("I"+"="*15+" "+"MOSTRAR USUÁRIOS CADASTROS(3)"+" "+"="*16+"I")
    print("I"+"="*20+" "+"EXCLUIR CADASTRO(4)"+" "+"="*21+"I")
    print("I"+"="*21+" "+"BUSCAR CADASTRO(5)"+" "+"="*21+"I")
    print("I"+"="*22+" "+"BUSCAR NO LOG(6)"+" "+"="*22+"I")
    print("I"+"="*26+" "+"SAIR(7)"+" "+"="*27+"I")
    print("I"+"*"*62+"I")
    opção = input("AGUARDANDO...\n")
    if opção == "1":
       cadastro(dicDeCadastro)
    elif opção == "2":
        a = login(dicDeCadastro)
        for x in dicDeCadastro:
            if x == a:
                menuDeLogin(a) 
    elif opção == "3":
       mostrarCadastros(dicDeCadastro)
    elif opção == "4":
        excluirCadastro(dicDeCadastro)
    elif opção == "5":
        buscaCadastro(dicDeCadastro)
    elif opção == "6":
        buscarNoLog()
    elif opção == "7":
        confirmar = input("TEM CERTEZA QUE DESEJA SAIR?(s/n)\n")
        if confirmar == "s":
             menu = False
        elif confirmar == "n":
            continue
        else:
            print("OPÇÃO NÃO ECONTRADA, RETORNANDO PARA O MENU...")
    else:
        print("\n"*40)
        print("OPÇÃO NÃO ENCONTRADA")
        print("\n"*1)
        continue
    

    
            


              
                
              
              
            
              
        
            
            
        
    
        
    
        

    


            
            
            
            
