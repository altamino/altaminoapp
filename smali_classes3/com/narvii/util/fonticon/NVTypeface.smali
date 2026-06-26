.class public interface abstract Lcom/narvii/util/fonticon/NVTypeface;
.super Ljava/lang/Object;
.source "NVTypeface.java"


# virtual methods
.method public abstract getCharacters()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrefixName()Ljava/lang/String;
.end method

.method public abstract getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
.end method
