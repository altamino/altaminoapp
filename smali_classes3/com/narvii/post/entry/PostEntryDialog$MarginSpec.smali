.class public Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/entry/PostEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginSpec"
.end annotation


# instance fields
.field public marginBottom:I

.field public marginRight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginBottom:I

    .line 168
    iput p2, p0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    return-void
.end method
