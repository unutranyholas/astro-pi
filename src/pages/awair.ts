import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export async function get() {
  try {
    const result = await fetch("http://192.168.0.101/air-data/latest").then(res => res.json());
    const data = await prisma.awair.create({
      data: {
        time: result.timestamp,
        score: result.score,
        co2: result.co2,
        humid: result.humid,
        pm25: result.pm25,
        temp: result.temp,
        voc: result.voc,
      }
    })
    return {
      body: JSON.stringify(data),
    }
  } catch (e) {
    return {
      body: JSON.stringify(e),
    }
  }
}