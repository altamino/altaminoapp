.class public Lcom/narvii/flag/FlagListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/flag/FlagListFragment$FlagListAdapter;
    }
.end annotation


# static fields
.field private static final FAKE_EXTERNAL_POST_TYPE:I = 0x68

.field private static final FAKE_LINK_POST_TYPE:I = 0x67

.field private static final FAKE_POLL_TYPE:I = 0x65

.field private static final FAKE_QUESTION_TYPE:I = 0x64

.field private static final FAKE_QUIZ_TYPE:I = 0x66

.field private static final KEY_API_FILTER_RESOLVED:Ljava/lang/String; = "resolved"

.field private static final KEY_DEFAULT_FILTER_TYPE:Ljava/lang/String; = "all"

.field private static final KEY_DEFAULT_REQUEST_TYPE:Ljava/lang/String; = "pending"

.field private static final RESOLVE_MODE_REQUEST:I = 0x64


# instance fields
.field private apiMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Landroid/view/View;

.field private mAdapter:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

.field private mReqFilter:Ljava/lang/String;

.field private mReqType:Ljava/lang/String;

.field private mResolveLayout:Landroid/view/View;

.field private mStopTime:Ljava/lang/String;

.field private objectFakeTypeMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private objectNameMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, "pending"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "all"

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance v0, Landroid/util/SparseArray;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 26
    .line 27
    new-instance v0, Landroid/util/SparseArray;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    .line 33
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mStopTime:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/flag/FlagListFragment;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/FlagListFragment;->getFlagObjectName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getApiName(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    return-object p1
.end method

.method private getFilterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-gez p1, :cond_1

    .line 17
    return-object v1

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private getFlagObjectName(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    aput-object p1, v0, v1

    .line 21
    .line 22
    .line 23
    const p1, 0x7f121113

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private initApiMapper()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f120778

    .line 6
    .line 7
    const-string v2, "all"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f12077a

    .line 16
    .line 17
    const-string v2, "bullying"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 23
    .line 24
    .line 25
    const v1, 0x7f12077b

    .line 26
    .line 27
    const-string v2, "nappropriate-content"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 33
    .line 34
    .line 35
    const v1, 0x7f12077e

    .line 36
    .line 37
    const-string v2, "spam"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 43
    .line 44
    .line 45
    const v1, 0x7f120779

    .line 46
    .line 47
    const-string v2, "art-theft"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 53
    .line 54
    .line 55
    const v1, 0x7f12077c

    .line 56
    .line 57
    const-string v2, "off-topic"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 63
    .line 64
    .line 65
    const v1, 0x7f12077f

    .line 66
    .line 67
    const-string v2, "trolling"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 73
    .line 74
    .line 75
    const v1, 0x7f120e39

    .line 76
    .line 77
    const-string v2, "others"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 83
    .line 84
    .line 85
    const v1, 0x7f12077d

    .line 86
    .line 87
    const-string v2, "resolved"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method private initObjectFakeMapper()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x3

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    .line 15
    .line 16
    const/16 v1, 0x65

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/16 v1, 0x67

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    .line 39
    .line 40
    const/16 v1, 0x66

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    .line 51
    .line 52
    const/16 v1, 0x68

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method private initObjectNameMapper()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f120e1c

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    const v1, 0x7f1203c7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 29
    .line 30
    .line 31
    const v1, 0x7f1212a2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 42
    .line 43
    .line 44
    const v1, 0x7f1202e6

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    const v1, 0x7f120eb3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 68
    .line 69
    .line 70
    const v1, 0x7f120266

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 81
    .line 82
    .line 83
    const v1, 0x7f1207a3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    const/16 v2, 0xc

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 95
    .line 96
    .line 97
    const v1, 0x7f1207a5

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    const/16 v2, 0xd

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 109
    .line 110
    .line 111
    const v1, 0x7f120203

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    const/16 v2, 0xf

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 123
    .line 124
    .line 125
    const v1, 0x7f12030d

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    const/16 v2, 0x10

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 137
    .line 138
    .line 139
    const v1, 0x7f1207a4

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    const/16 v2, 0x11

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 151
    .line 152
    .line 153
    const v1, 0x7f1201bb

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    const/16 v2, 0x14

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    .line 164
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 165
    .line 166
    .line 167
    const v1, 0x7f120f98

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    const/16 v2, 0x17

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    .line 178
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 179
    .line 180
    .line 181
    const v1, 0x7f120e7d

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    const/16 v2, 0x6d

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    .line 192
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 193
    .line 194
    .line 195
    const v1, 0x7f1203d1

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    const/16 v2, 0x64

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    .line 206
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 207
    .line 208
    .line 209
    const v1, 0x7f1203d0

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    const/16 v2, 0x65

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    .line 220
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 221
    .line 222
    .line 223
    const v1, 0x7f120ea6

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    const/16 v2, 0x67

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    .line 234
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 235
    .line 236
    .line 237
    const v1, 0x7f1203d2

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    const/16 v2, 0x66

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    .line 248
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 249
    .line 250
    .line 251
    const v1, 0x7f120e3f

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 255
    move-result-object v1

    .line 256
    .line 257
    const/16 v2, 0x68

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/flag/FlagListFragment;)Lcom/narvii/flag/FlagListFragment$FlagListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mAdapter:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/flag/FlagListFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mResolveLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mStopTime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/flag/FlagListFragment;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;-><init>(Lcom/narvii/flag/FlagListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mAdapter:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 8
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 v0, 0x64

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    const-string p1, "flag_resolve_back_mode"

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p3, 0x1

    .line 31
    .line 32
    if-ne p1, p3, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    const p3, 0x7f12078f

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setTitle(I)V

    .line 48
    .line 49
    const/16 p3, 0xce

    .line 50
    .line 51
    const/16 v0, 0x7d

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 59
    .line 60
    .line 61
    const p2, 0x7f120794

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 65
    const/4 p2, 0x4

    .line 66
    const/4 p3, 0x0

    .line 67
    .line 68
    .line 69
    const v0, 0x104000a

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment;->initApiMapper()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment;->initObjectNameMapper()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment;->initObjectFakeMapper()V

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string p1, "statistics"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 27
    .line 28
    const-string v0, "Flag Center Page Opened"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    const-string v0, "Flag Center Page Opened Total"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 38
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f120766

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f08047a

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0288

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const/16 p2, 0xa

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d0292

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->emptyView:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    .line 22
    .line 23
    const-string p2, "resolved"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    const-string v0, " "

    .line 30
    .line 31
    .line 32
    const v1, 0x7f120793

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p2}, Lcom/narvii/flag/FlagListFragment;->getFilterName(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 64
    .line 65
    const-string p2, "all"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    .line 74
    const p1, 0x7f120791

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    iget-object p2, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p2}, Lcom/narvii/flag/FlagListFragment;->getFilterName(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    :goto_0
    iget-object p2, p0, Lcom/narvii/flag/FlagListFragment;->emptyView:Landroid/view/View;

    .line 110
    .line 111
    .line 112
    const v0, 0x7f0a04e2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    check-cast p2, Landroid/widget/TextView;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_2
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/flag/model/Flag;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "delete"

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120766

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x7

    .line 25
    .line 26
    new-array v0, v0, [I

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    const v2, 0x7f120778

    .line 31
    .line 32
    aput v2, v0, v1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "resolved"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    const/4 v4, 0x4

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    move v1, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v1, v3

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 64
    const/4 v1, 0x1

    .line 65
    .line 66
    .line 67
    const v2, 0x7f12077c

    .line 68
    .line 69
    aput v2, v0, v1

    .line 70
    .line 71
    iget-object v5, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v2}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eqz v5, :cond_2

    .line 82
    move v5, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move v5, v3

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p1, v2, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 88
    const/4 v2, 0x2

    .line 89
    .line 90
    .line 91
    const v5, 0x7f12077a

    .line 92
    .line 93
    aput v5, v0, v2

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v5}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    move v2, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move v2, v3

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {p1, v5, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 112
    const/4 v2, 0x3

    .line 113
    .line 114
    .line 115
    const v5, 0x7f12077e

    .line 116
    .line 117
    aput v5, v0, v2

    .line 118
    .line 119
    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v5}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v2

    .line 128
    .line 129
    if-eqz v2, :cond_4

    .line 130
    move v2, v4

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    move v2, v3

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-virtual {p1, v5, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 136
    .line 137
    .line 138
    const v2, 0x7f120e39

    .line 139
    .line 140
    aput v2, v0, v4

    .line 141
    .line 142
    iget-object v5, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v2}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    .line 146
    move-result-object v6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v5

    .line 151
    .line 152
    if-eqz v5, :cond_5

    .line 153
    move v5, v4

    .line 154
    goto :goto_4

    .line 155
    :cond_5
    move v5, v3

    .line 156
    .line 157
    .line 158
    :goto_4
    invoke-virtual {p1, v2, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 159
    const/4 v2, 0x5

    .line 160
    .line 161
    .line 162
    const v5, 0x7f12077d

    .line 163
    .line 164
    aput v5, v0, v2

    .line 165
    .line 166
    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, v5}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    .line 170
    move-result-object v6

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v2

    .line 175
    .line 176
    if-eqz v2, :cond_6

    .line 177
    move v3, v4

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-virtual {p1, v5, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 181
    .line 182
    new-instance v2, Lcom/narvii/flag/FlagListFragment$2;

    .line 183
    .line 184
    .line 185
    invoke-direct {v2, p0, v0}, Lcom/narvii/flag/FlagListFragment$2;-><init>(Lcom/narvii/flag/FlagListFragment;[I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 192
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 13
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f120bd4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const p2, 0x7f0a0c2d

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mResolveLayout:Landroid/view/View;

    .line 23
    .line 24
    new-instance p2, Lcom/narvii/flag/FlagListFragment$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/narvii/flag/FlagListFragment$1;-><init>(Lcom/narvii/flag/FlagListFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mResolveLayout:Landroid/view/View;

    .line 33
    .line 34
    const/16 p2, 0x8

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "drawerHost"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    .line 14
    return-void
.end method
