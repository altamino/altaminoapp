.class public final Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;
.super Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
.source "SelectCoHostFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/SelectCoHostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectCoHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectCoHostFragment.kt\ncom/narvii/chat/setting/SelectCoHostFragment$Adapter\n*L\n1#1,131:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/SelectCoHostFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-static {p3}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 94
    instance-of v0, p1, Lcom/narvii/model/User;

    const-string/jumbo v1, "view.findViewById<View>(\u2026.user_picker_exist_check)"

    const v2, 0x7f090c32

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090c31

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p3, "view.findViewById<View>(R.id.user_picker_check)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090c33

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p3, "view.findViewById<View>(R.id.user_picker_uncheck)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const-string/jumbo p1, "view"

    .line 102
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 111
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected pickerUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0073

    .line 118
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f073e

    .line 119
    new-instance v1, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter$pickerUser$1$1;

    invoke-direct {v1, p1}, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter$pickerUser$1$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->pickerUser(Lcom/narvii/model/User;)V

    return-void
.end method
