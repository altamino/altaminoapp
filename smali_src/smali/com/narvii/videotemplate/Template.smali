.class public Lcom/narvii/videotemplate/Template;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x170792bef66d25bcL


# instance fields
.field public backgroundMusic:Ljava/lang/String;

.field public fps:I

.field public id:Ljava/lang/String;

.field public inputCount:I

.field public minInputCount:I

.field public outputFrameCount:I

.field public segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/videotemplate/TemplateSegment;",
            ">;"
        }
    .end annotation
.end field

.field public version:I

.field public videoEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
