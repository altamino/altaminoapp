.class public final Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;
.super Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/SelectCoHostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V

    .line 6
    return-void
.end method

.method public static synthetic m(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->pickerUser$lambda$3$lambda$2(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final pickerUser$lambda$3$lambda$2(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dialog"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method


# virtual methods
.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object p3, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0f54

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    check-cast p3, Ljava/util/Collection;

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/User;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    const/4 p3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0a0f53

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    const p1, 0x7f0a0f55

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 73
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    .line 11
    .line 12
    instance-of v1, p3, Lcom/narvii/model/User;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/Collection;

    .line 21
    move-object v1, p3

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/User;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method protected pickerUser(Lcom/narvii/model/User;)V
    .locals 2
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f12007c

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/chat/setting/l;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/narvii/chat/setting/l;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f1207e7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 50
    return-void

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->pickerUser(Lcom/narvii/model/User;)V

    .line 54
    return-void
.end method
