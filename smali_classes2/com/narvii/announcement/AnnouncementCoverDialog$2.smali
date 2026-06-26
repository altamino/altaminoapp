.class Lcom/narvii/announcement/AnnouncementCoverDialog$2;
.super Ljava/lang/Object;
.source "AnnouncementCoverDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/announcement/AnnouncementCoverDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

.field final synthetic val$mainLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/announcement/AnnouncementCoverDialog;Landroid/view/View;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

    iput-object p2, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->val$mainLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->val$mainLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog$2;->this$0:Lcom/narvii/announcement/AnnouncementCoverDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
