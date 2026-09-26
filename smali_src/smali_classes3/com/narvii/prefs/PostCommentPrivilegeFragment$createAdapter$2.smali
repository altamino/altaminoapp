.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;
.super Lcom/narvii/adapter/RadioGroupAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/PostCommentPrivilegeFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/adapter/RadioItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "getContext(...)"

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/adapter/RadioItem;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_EVERYONE()I

    .line 12
    move-result v2

    .line 13
    .line 14
    iget-object v3, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v5, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_EVERYONE()I

    .line 27
    move-result v5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4, v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    :cond_0
    if-eqz p1, :cond_1

    .line 40
    .line 41
    new-instance v1, Lcom/narvii/adapter/RadioItem;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_MY_FOLLOWING()I

    .line 47
    move-result v2

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    iget-object v5, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_MY_FOLLOWING()I

    .line 62
    move-result v5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    :cond_1
    if-eqz p1, :cond_2

    .line 75
    .line 76
    new-instance v1, Lcom/narvii/adapter/RadioItem;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_NONE()I

    .line 82
    move-result v2

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_NONE()I

    .line 97
    move-result v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4, v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v2, v0}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
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
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/adapter/RadioGroupAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->getSelectedItemId()I

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$sendRequest(Lcom/narvii/prefs/PostCommentPrivilegeFragment;I)V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method
