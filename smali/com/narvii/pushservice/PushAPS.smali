.class public Lcom/narvii/pushservice/PushAPS;
.super Ljava/lang/Object;
.source "PushAPS.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    using = Lcom/narvii/pushservice/PushAPS$APSDeserializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/PushAPS$APSDeserializer;
    }
.end annotation


# instance fields
.field public badge:I

.field public message:Ljava/lang/String;

.field public sound:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
