from datetime import datetime

def idAhora():
    # Obtener la fecha y hora actual
    now = datetime.now()
    # Formatear la fecha y hora en formato deseado
    fecha_formateada = now.strftime("%d%m%Y")
    hora_formateada = now.strftime("%H%M%S")
    # Retornar el resultado concatenado
    return fecha_formateada + hora_formateada
    # Ejemplo de uso
    # resultado = idAhora()
    # print(resultado)

def fechaAhora():
    # Obtener la fecha actual
    now = datetime.now()
    # Formatear la fecha en formato deseado
    fecha_formateada = now.strftime("%d/%m/%Y")
    # Retornar el resultado formateado
    return fecha_formateada
    # Ejemplo de uso
    # resultado = fechaAhora()
    # print(resultado)

def horaAhora():
    # Obtener la hora actual
    now = datetime.now()
    # Formatear la hora en formato deseado
    hora_formateada = now.strftime("%H:%M:%S")
    # Retornar el resultado formateado
    return hora_formateada
    # Ejemplo de uso
    # resultado = horaAhora()
    # print(resultado)