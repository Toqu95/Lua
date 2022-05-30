from collections import UserList
import discord
from discord import utils
from discord.embeds import Embed
from discord.ext import commands, tasks
import os
import random

TOKEN = "ODYwOTE3MTk4NTMxNTkyMjMy.YOCNnw.APmrzrv3jC6JAUfAw1AzozWw_NE"
PREFIX = "!"
INTENTS = discord.Intents.default()

bot = commands.Bot(command_prefix=PREFIX, intents=INTENTS)

@bot.command()
async def meme(ctx):
    pic = (os.listdir("Memes"))
    file = ("Memes\\" + pic)
    for 

@bot.command()
async def avatar(ctx, member: discord.Member):
    await ctx.send(member._user.avatar_url)

@bot.command()
async def info(ctx, member: discord.Member):
    embedVar = discord.Embed(title=member.display_name, color=member.color)
    embedVar.add_field(name="Information", value=f"Joined: {member.joined_at.date()}", inline=True)
    embedVar.add_field(name="Profile picture" ,value="" ,inline=True)
    embedVar.set_image(url=member._user.avatar_url)
    await ctx.channel.send(embed=embedVar)

@bot.event
async def on_ready():
    print(f'Logged in as: {bot.user.name}')
    print(f'With ID: {bot.user.id}')
    #change_status.start()
    await bot.change_presence(activity=discord.Game("Being Developed"))

@bot.event
async def on_member_join(ctx, member):
    ctx.channel.send("welcome", "@" + member.display_name)

bot.run(TOKEN)