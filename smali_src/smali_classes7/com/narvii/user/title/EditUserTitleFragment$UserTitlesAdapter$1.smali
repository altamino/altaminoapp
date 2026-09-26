.class Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-ltz p1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ge p1, v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    instance-of v0, v0, Lcom/narvii/model/api/UserTitle;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->s(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    .line 46
    const/16 v1, 0x14

    .line 47
    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 66
    const/4 v2, 0x1

    .line 67
    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    const/4 v3, 0x0

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    aput-object v1, v2, v3

    .line 76
    .line 77
    .line 78
    const v1, 0x7f1202a7

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    const v0, 0x104000a

    .line 89
    const/4 v1, 0x0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    check-cast v0, Lcom/narvii/model/api/UserTitle;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 123
    .line 124
    iget-object v1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->A(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 139
    .line 140
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->s(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitle(Lcom/narvii/model/api/UserTitle;)V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->C(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 157
    :cond_2
    :goto_0
    return-void
.end method
