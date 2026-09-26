.class Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;
.super Lcom/narvii/widget/InputDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/widget/InputDialog;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected enableActionButton(Landroid/view/View;Z)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    const v1, 0x7f080182

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    const v1, 0x7f080181

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 31
    return-void
.end method
