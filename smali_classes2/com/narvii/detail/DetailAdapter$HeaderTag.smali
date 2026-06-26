.class public Lcom/narvii/detail/DetailAdapter$HeaderTag;
.super Lcom/narvii/util/Tag;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderTag"
.end annotation


# instance fields
.field count:I

.field final stringId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 193
    iput p2, p0, Lcom/narvii/detail/DetailAdapter$HeaderTag;->stringId:I

    return-void
.end method


# virtual methods
.method public setCount(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/narvii/detail/DetailAdapter$HeaderTag;->count:I

    return-void
.end method
