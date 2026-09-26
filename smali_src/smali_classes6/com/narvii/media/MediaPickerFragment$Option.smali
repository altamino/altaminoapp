.class public Lcom/narvii/media/MediaPickerFragment$Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field public flag:I

.field public id:I

.field public isCustom:Z

.field public name:Ljava/lang/String;

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$Option;->isCustom:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$Option;->position:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$Option;->isCustom:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$Option;->position:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment$Option;->id:I

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$Option;->name:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/media/MediaPickerFragment$Option;->flag:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    iput p4, p0, Lcom/narvii/media/MediaPickerFragment$Option;->position:I

    return-void
.end method
