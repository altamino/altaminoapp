.class Lcom/narvii/flag/FlagListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/FlagListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/FlagListFragment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/flag/FlagListFragment;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/flag/FlagListFragment$2;->val$ops:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 3
    .line 4
    const-string v0, "pending"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/flag/FlagListFragment;->A(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string p1, "resolved"

    .line 10
    .line 11
    const-string v0, "all"

    .line 12
    .line 13
    if-eqz p2, :cond_5

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eq p2, v1, :cond_4

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    if-eq p2, v1, :cond_3

    .line 20
    const/4 v1, 0x3

    .line 21
    .line 22
    if-eq p2, v1, :cond_2

    .line 23
    const/4 v1, 0x4

    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    const/4 v1, 0x5

    .line 27
    .line 28
    if-eq p2, v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/narvii/flag/FlagListFragment;->z(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/narvii/flag/FlagListFragment;->A(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 43
    .line 44
    const-string v1, "others"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/narvii/flag/FlagListFragment;->z(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 51
    .line 52
    const-string v1, "spam"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/narvii/flag/FlagListFragment;->z(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 59
    .line 60
    const-string v1, "bullying"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/narvii/flag/FlagListFragment;->z(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 67
    .line 68
    const-string v1, "off-topic"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/narvii/flag/FlagListFragment;->z(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_5
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0}, Lcom/narvii/flag/FlagListFragment;->z(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/narvii/flag/FlagListFragment;->t(Lcom/narvii/flag/FlagListFragment;)Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/narvii/flag/FlagListFragment;->t(Lcom/narvii/flag/FlagListFragment;)Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p1

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_6
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->u(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 116
    .line 117
    :goto_1
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 125
    .line 126
    .line 127
    const v2, 0x7f120bd4

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v1, " ("

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment$2;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment$2;->val$ops:[I

    .line 144
    .line 145
    aget p2, v2, p2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string p2, ")"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method
