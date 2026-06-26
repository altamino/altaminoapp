.class Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;
.super Lcom/narvii/widget/InputDialog;
.source "SharedFolderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper$7;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7;Landroid/content/Context;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    invoke-direct {p0, p2}, Lcom/narvii/widget/InputDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected enableActionButton(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_1

    const v1, 0x7f0800f1

    goto :goto_0

    :cond_1
    const v1, 0x7f0800f0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
