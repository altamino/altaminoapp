.class public Lcom/narvii/util/text/MyEditText;
.super Landroid/widget/EditText;
.source "MyEditText.java"


# instance fields
.field public onKeyPreImeListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/util/text/MyEditText;->onKeyPreImeListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
