.class public Lcom/narvii/photos/PhotoUploadSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/photos/PhotoUploadSpec$Builder;
    }
.end annotation


# instance fields
.field public headers:[Ljava/lang/String;

.field public keepPng:Z

.field public original:Z

.field public quality:I

.field public target:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoUploadSpec;->original:Z

    .line 7
    .line 8
    const/16 v1, 0x50

    .line 9
    .line 10
    iput v1, p0, Lcom/narvii/photos/PhotoUploadSpec;->quality:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoUploadSpec;->keepPng:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/photos/PhotoUploadSpec;->uri:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/photos/PhotoUploadSpec$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 6
    return-object v0
.end method
