.class public Lcom/narvii/videotemplate/TemplateSegment;
.super Ljava/lang/Object;
.source "TemplateSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x20bca4ad6c4c65bfL


# instance fields
.field public channel:I

.field public channelInputs:[I

.field public channelRenderDelays:[I

.field public frameCount:I

.field public frameOffset:I

.field public pass2ExtraInputs:[I

.field public pass2InputCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public passCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public shader:[Ljava/lang/String;

.field public shaderString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public shaderString2Pass:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
