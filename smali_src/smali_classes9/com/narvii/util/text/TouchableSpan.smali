.class public abstract Lcom/narvii/util/text/TouchableSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private pressed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/text/TouchableSpan;->pressed:Z

    return v0
.end method

.method public setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/text/TouchableSpan;->pressed:Z

    return-void
.end method
