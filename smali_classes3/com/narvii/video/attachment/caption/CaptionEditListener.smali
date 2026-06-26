.class public interface abstract Lcom/narvii/video/attachment/caption/CaptionEditListener;
.super Ljava/lang/Object;
.source "CaptionEditListener.java"


# static fields
.field public static final COLOR_TYPE_SHADOW:I = 0x3

.field public static final COLOR_TYPE_STROKE:I = 0x2

.field public static final COLOR_TYPE_TEXT:I = 0x1


# virtual methods
.method public abstract onColorChanged(IIZ)V
.end method

.method public abstract onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method
