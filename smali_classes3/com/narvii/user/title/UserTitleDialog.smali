.class public Lcom/narvii/user/title/UserTitleDialog;
.super Lcom/narvii/app/NVDialog;
.source "UserTitleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/model/User;)V
    .locals 1

    const v0, 0x7f1000ce

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    if-nez p2, :cond_0

    return-void

    .line 26
    :cond_0
    iput-object p2, p0, Lcom/narvii/user/title/UserTitleDialog;->user:Lcom/narvii/model/User;

    const p1, 0x7f0b01bf

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090c3f

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/user/title/UserTitleFlowView;

    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;)V

    const p1, 0x7f09012c

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09012c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 36
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 37
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleDialog;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const v1, 0x7f09012c

    .line 43
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const v0, 0x7f0906b2

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010036

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method
