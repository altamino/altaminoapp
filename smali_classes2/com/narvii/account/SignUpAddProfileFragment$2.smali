.class Lcom/narvii/account/SignUpAddProfileFragment$2;
.super Ljava/lang/Object;
.source "SignUpAddProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAddProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpAddProfileFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->val$view:Landroid/view/View;

    const p2, 0x7f090130

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 183
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->val$view:Landroid/view/View;

    const p3, 0x7f09076d

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 184
    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p3, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    .line 185
    iget-object p4, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 p5, 0x42c80000    # 100.0f

    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    .line 186
    iget-object p5, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p5}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p5

    const/high16 p6, 0x41f00000    # 30.0f

    invoke-static {p5, p6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p5

    float-to-int p5, p5

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p6

    add-int/2addr p6, p3

    add-int/2addr p6, p3

    add-int/2addr p6, p4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p6, p2

    add-int/2addr p6, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p6, p3

    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-object p2, p2, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHeight()I

    move-result p2

    add-int/2addr p6, p2

    int-to-float p2, p6

    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x42200000    # 40.0f

    invoke-static {p3, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    add-float/2addr p2, p3

    int-to-float p3, p5

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-object p3, p3, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 188
    :goto_0
    sget-object p3, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance p4, Lcom/narvii/account/SignUpAddProfileFragment$2$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment$2$1;-><init>(Lcom/narvii/account/SignUpAddProfileFragment$2;Landroid/view/View;Z)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
