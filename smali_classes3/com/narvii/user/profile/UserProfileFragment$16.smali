.class Lcom/narvii/user/profile/UserProfileFragment$16;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field checked3:Z

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1594
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-boolean v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->disableSwitchListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090c3c

    if-ne p2, v0, :cond_1

    .line 1597
    iget-object v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    const p1, 0x7f090c3a

    if-ne p2, p1, :cond_2

    .line 1600
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    const p1, 0x7f090c3d

    if-ne p2, p1, :cond_3

    .line 1603
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p2, p1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1604
    iget-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->checked3:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 1605
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->checked3:Z

    :cond_3
    return-void
.end method
