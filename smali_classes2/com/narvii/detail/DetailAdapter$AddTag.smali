.class public Lcom/narvii/detail/DetailAdapter$AddTag;
.super Lcom/narvii/util/Tag;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddTag"
.end annotation


# instance fields
.field final stringId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 206
    iput p2, p0, Lcom/narvii/detail/DetailAdapter$AddTag;->stringId:I

    return-void
.end method
