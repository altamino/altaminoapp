.class public Lcom/narvii/model/ExternalSourceOrigin;
.super Ljava/lang/Object;
.source "ExternalSourceOrigin.java"


# static fields
.field public static final EXTERNAL_SOURCE_ORIGIN_GENERAL:Ljava/lang/String; = "generalRss"

.field public static final EXTERNAL_SOURCE_ORIGIN_REDDIT:Ljava/lang/String; = "reddit"

.field public static final EXTERNAL_SOURCE_ORIGIN_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final EXTERNAL_SOURCE_TYPE_ALL:I = -0x1

.field public static final EXTERNAL_SOURCE_TYPE_GENERAL_RSS_FEED:I = 0x64

.field public static final EXTERNAL_SOURCE_TYPE_NONE:I = 0x0

.field public static final EXTERNAL_SOURCE_TYPE_REDDIT:I = 0x2

.field public static final EXTERNAL_SOURCE_TYPE_YOUTUBE_CHANNEL:I = 0x1


# instance fields
.field public iconResId:I

.field public name:Ljava/lang/String;

.field public smallIconId:I

.field public titleId:I

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;III)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/narvii/model/ExternalSourceOrigin;->type:I

    .line 28
    iput p3, p0, Lcom/narvii/model/ExternalSourceOrigin;->iconResId:I

    .line 29
    iput p4, p0, Lcom/narvii/model/ExternalSourceOrigin;->smallIconId:I

    .line 30
    iput-object p2, p0, Lcom/narvii/model/ExternalSourceOrigin;->name:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/narvii/model/ExternalSourceOrigin;->titleId:I

    return-void
.end method
