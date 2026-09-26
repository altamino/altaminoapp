.class public final Lcom/narvii/master/home/profile/ProfileListFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/PostListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/ProfileListFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/ProfileListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_SHOW_AVATAR_FRAME_PICKER:Ljava/lang/String; = "show_picker"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final REQ_CODE_USER_PROFILE:I

.field public accountService:Lcom/narvii/account/AccountService;

.field private final aminoIdRightChevron$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final avatarLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundPickerView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final btnEditAvatarFrame$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final commentPermissionLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final communityLogolayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public dir:Ljava/io/File;

.field private final editAminoIdLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final editBioLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final editUsernameLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final edtNickname$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isRequestSent:Z

.field private final ivCommunity1$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ivCommunity2$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ivCommunity3$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ivCommunity4$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ivCommunity5$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final linkedCommunitiesLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private final retryListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private statusView:Lcom/narvii/paging/state/PageStatusView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tvAminoId$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvBio$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvCommentPermission$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private user:Lcom/narvii/model/User;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final userProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/ProfileListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/ProfileListFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/profile/ProfileListFragment;->Companion:Lcom/narvii/master/home/profile/ProfileListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x65

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->REQ_CODE_USER_PROFILE:I

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->userProfiles:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a04be

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->edtNickname$delegate:Lw7/m;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a04b5

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->btnEditAvatarFrame$delegate:Lw7/m;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a0f36

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->avatarLayout$delegate:Lw7/m;

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0a03a5

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->contentLayout$delegate:Lw7/m;

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a019b

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->backgroundPickerView$delegate:Lw7/m;

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0a07c0

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editAminoIdLayout$delegate:Lw7/m;

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a07c1

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editUsernameLayout$delegate:Lw7/m;

    .line 78
    .line 79
    .line 80
    const v0, 0x7f0a07bf

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editBioLayout$delegate:Lw7/m;

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0a07c4

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->linkedCommunitiesLayout$delegate:Lw7/m;

    .line 96
    .line 97
    .line 98
    const v0, 0x7f0a07bb

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->commentPermissionLayout$delegate:Lw7/m;

    .line 105
    .line 106
    .line 107
    const v0, 0x7f0a0f0e

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvBio$delegate:Lw7/m;

    .line 114
    .line 115
    .line 116
    const v0, 0x7f0a0f0d

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvAminoId$delegate:Lw7/m;

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0a0104

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->aminoIdRightChevron$delegate:Lw7/m;

    .line 132
    .line 133
    .line 134
    const v0, 0x7f0a0c8d

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->scrollView$delegate:Lw7/m;

    .line 141
    .line 142
    .line 143
    const v0, 0x7f0a037b

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->communityLogolayout$delegate:Lw7/m;

    .line 150
    .line 151
    .line 152
    const v0, 0x7f0a077d

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity1$delegate:Lw7/m;

    .line 159
    .line 160
    .line 161
    const v0, 0x7f0a077e

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity2$delegate:Lw7/m;

    .line 168
    .line 169
    .line 170
    const v0, 0x7f0a077f

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity3$delegate:Lw7/m;

    .line 177
    .line 178
    .line 179
    const v0, 0x7f0a0780

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity4$delegate:Lw7/m;

    .line 186
    .line 187
    .line 188
    const v0, 0x7f0a0781

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity5$delegate:Lw7/m;

    .line 195
    .line 196
    .line 197
    const v0, 0x7f0a0f13

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvCommentPermission$delegate:Lw7/m;

    .line 204
    .line 205
    new-instance v0, Lcom/narvii/master/home/profile/f0;

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/f0;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;)V

    .line 209
    .line 210
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    .line 211
    return-void
.end method

.method public static final synthetic access$getCurLoadingFrame$p(Lcom/narvii/master/home/profile/ProfileListFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    return-object p0
.end method

.method private final bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/master/home/profile/ProfileListFragment;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/master/home/profile/ProfileListFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/profile/ProfileListFragment$bind$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "avatarFrameLoader"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    const v3, 0x7f0a0182

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/widget/SpinningView;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    .line 35
    const v4, 0x7f0a0180

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v3, v2

    .line 42
    .line 43
    :goto_1
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 44
    const/4 v4, 0x2

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v2, v5, v4, v2}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    :goto_2
    if-nez v3, :cond_3

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_3
    const/16 v2, 0x8

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    :goto_3
    iget-object v2, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 65
    .line 66
    const-string v4, "frameId"

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    new-instance v4, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;

    .line 72
    .line 73
    .line 74
    invoke-direct {v4, p0, v1, v3}, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/widget/SpinningView;Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1, v2, p0, v4}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    .line 78
    return-void
.end method

.method public static synthetic n(Lcom/narvii/master/home/profile/ProfileListFragment;ZLcom/narvii/util/RequestResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest$lambda$6(Lcom/narvii/master/home/profile/ProfileListFragment;ZLcom/narvii/util/RequestResult;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/master/home/profile/ProfileListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener$lambda$5(Lcom/narvii/master/home/profile/ProfileListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->postAvatarFrame$lambda$7(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final postAvatarFrame$lambda$7(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-void
.end method

.method private final refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "membership"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isSubscribeMemberShip()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 36
    return-void
.end method

.method static synthetic refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V

    .line 9
    return-void
.end method

.method private static final retryListener$lambda$5(Lcom/narvii/master/home/profile/ProfileListFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v0, v1}, Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/ProfileListFragment;ZILjava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/ProfileListFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest(Z)V

    .line 9
    return-void
.end method

.method private static final sendGlobalProfileRequest$lambda$6(Lcom/narvii/master/home/profile/ProfileListFragment;ZLcom/narvii/util/RequestResult;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p2, Lcom/narvii/util/RequestResult;->code:I

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    iget-object p2, p2, Lcom/narvii/util/RequestResult;->object:Lcom/narvii/model/NVObject;

    .line 13
    .line 14
    instance-of v0, p2, Lcom/narvii/model/User;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    instance-of v0, p2, Lcom/narvii/model/User;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/model/User;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p2, v2

    .line 26
    .line 27
    :goto_0
    iput-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 28
    const/4 p2, 0x1

    .line 29
    .line 30
    iput-boolean p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    .line 31
    .line 32
    :cond_1
    if-nez p1, :cond_7

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateViews()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateHeader()V

    .line 53
    .line 54
    const-string p1, "show_picker"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBtnEditAvatarFrame()Landroid/view/View;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_4
    if-nez p1, :cond_7

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    iget-object p2, p2, Lcom/narvii/util/RequestResult;->errorMessage:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 82
    .line 83
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    const/4 p2, 0x2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateViews()V

    .line 93
    :cond_7
    :goto_1
    return-void
.end method

.method private final showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0, p1, v1, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "accountService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getAminoIdRightChevron()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->aminoIdRightChevron$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->avatarLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 9
    return-object v0
.end method

.method protected final getBackgroundMediaPickerFlag()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public final getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->backgroundPickerView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/BackgroundPickerView;

    .line 9
    return-object v0
.end method

.method public final getBtnEditAvatarFrame()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->btnEditAvatarFrame$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getCommentPermissionLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->commentPermissionLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method public final getCommunityLogolayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->communityLogolayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method public final getContentLayout()Lcom/narvii/app/theme/view/NVThemeLinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->contentLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 9
    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "dir"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getEditAminoIdLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editAminoIdLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method public final getEditBioLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editBioLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method public final getEditUsernameLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editUsernameLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method public final getEdtNickname()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->edtNickname$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public final getIvCommunity1()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity1$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method

.method public final getIvCommunity2()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity2$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method

.method public final getIvCommunity3()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity3$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method

.method public final getIvCommunity4()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity4$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method

.method public final getIvCommunity5()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity5$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method

.method public final getLinkedCommunitiesLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->linkedCommunitiesLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method public final getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "profile_edit"

    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "progressDialog"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getRetryListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getScrollView()Lcom/narvii/widget/NVScrollView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->scrollView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVScrollView;

    .line 9
    return-object v0
.end method

.method protected final getStatusView()Lcom/narvii/paging/state/PageStatusView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    return-object v0
.end method

.method public final getTvAminoId()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvAminoId$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public final getTvBio()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvBio$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public final getTvCommentPermission()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvCommentPermission$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public final getUser()Lcom/narvii/model/User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    return-object v0
.end method

.method public final getUserProfiles()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->userProfiles:Ljava/util/HashMap;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final isRequestSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getDir()Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "0"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const-string p2, "cid"

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    move-result p2

    .line 16
    .line 17
    const-string v0, "object"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-class v1, Lcom/narvii/model/User;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/model/User;

    .line 30
    .line 31
    const-string v1, "timestamp"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->REQ_CODE_USER_PROFILE:I

    .line 38
    .line 39
    if-ne p1, v1, :cond_0

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, p3, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->userProfiles:Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->dismiss()V

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public onCancel()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    .line 15
    :goto_0
    const/16 v1, 0x21

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    const v4, 0x7f0a04b5

    .line 28
    .line 29
    if-ne v3, v4, :cond_7

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getScrollView()Lcom/narvii/widget/NVScrollView;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 37
    .line 38
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string v1, "EditProfileFrame"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    instance-of v1, p1, Lcom/narvii/app/NVActivity;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object p1, v0

    .line 71
    .line 72
    .line 73
    :goto_1
    const v1, 0x7f0a018a

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v1, v2}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->show(Lcom/narvii/app/NVActivity;IZ)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 80
    .line 81
    if-eqz p1, :cond_18

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    iget-object v1, v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_3
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    iget-object v2, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v2, v0

    .line 99
    .line 100
    :goto_2
    if-eqz v2, :cond_5

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 105
    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    iget-object v1, v1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    move-object v1, v0

    .line 111
    .line 112
    :goto_3
    iget-object v2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 113
    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    iget-object v0, v2, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOriginAvatarFrame(Lcom/narvii/model/User$AvatarFrameLite;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setCurSelectedFrameId(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOnPickAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    const/high16 v1, 0x43160000    # 150.0f

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 135
    move-result v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setMarginTopSize(I)V

    .line 139
    .line 140
    goto/16 :goto_b

    .line 141
    .line 142
    :cond_7
    :goto_4
    const-string v0, "0"

    .line 143
    .line 144
    if-nez p1, :cond_8

    .line 145
    goto :goto_5

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 149
    move-result v3

    .line 150
    .line 151
    .line 152
    const v4, 0x7f0a0f36

    .line 153
    .line 154
    if-ne v3, v4, :cond_a

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getScrollView()Lcom/narvii/widget/NVScrollView;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 162
    .line 163
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    .line 164
    .line 165
    .line 166
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    const-string v1, "EditUserIcon"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 177
    .line 178
    new-instance p1, Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 182
    .line 183
    const-string v1, "avatar"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    .line 188
    new-instance p1, Ljava/io/File;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getDir()Ljava/io/File;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 199
    move-result v0

    .line 200
    .line 201
    if-nez v0, :cond_9

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 205
    .line 206
    :cond_9
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 207
    .line 208
    if-eqz v0, :cond_18

    .line 209
    .line 210
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 211
    .line 212
    if-eqz v0, :cond_18

    .line 213
    .line 214
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;

    .line 215
    .line 216
    .line 217
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;Lcom/narvii/media/MediaPickerFragment;)V

    .line 218
    .line 219
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 220
    .line 221
    .line 222
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->pickIcon(Lcom/narvii/model/User;)V

    .line 226
    .line 227
    goto/16 :goto_b

    .line 228
    .line 229
    :cond_a
    :goto_5
    if-nez p1, :cond_b

    .line 230
    goto :goto_6

    .line 231
    .line 232
    .line 233
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 234
    move-result v1

    .line 235
    .line 236
    .line 237
    const v3, 0x7f0a07c0

    .line 238
    .line 239
    if-ne v1, v3, :cond_d

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    .line 255
    move-result v0

    .line 256
    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    const-class p1, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 260
    .line 261
    .line 262
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    .line 266
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 267
    .line 268
    goto/16 :goto_b

    .line 269
    .line 270
    .line 271
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    .line 275
    const v1, 0x7f12013e

    .line 276
    .line 277
    .line 278
    invoke-static {v0, p1, v1}, Lcom/narvii/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;I)V

    .line 279
    .line 280
    goto/16 :goto_b

    .line 281
    .line 282
    :cond_d
    :goto_6
    if-nez p1, :cond_e

    .line 283
    goto :goto_7

    .line 284
    .line 285
    .line 286
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 287
    move-result v1

    .line 288
    .line 289
    .line 290
    const v3, 0x7f0a07bf

    .line 291
    .line 292
    if-ne v1, v3, :cond_f

    .line 293
    .line 294
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 295
    .line 296
    if-eqz p1, :cond_18

    .line 297
    .line 298
    new-instance v0, Landroid/content/Intent;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 302
    move-result-object v1

    .line 303
    .line 304
    const-class v3, Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 305
    .line 306
    .line 307
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .line 309
    const-string v1, "uid"

    .line 310
    .line 311
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    .line 316
    new-instance v1, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 317
    .line 318
    .line 319
    invoke-direct {v1, p1}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>(Lcom/narvii/model/User;)V

    .line 320
    .line 321
    const-string v3, "post"

    .line 322
    .line 323
    .line 324
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .line 330
    const-string v1, "userProfile"

    .line 331
    .line 332
    .line 333
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    move-result-object p1

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    .line 339
    const-string p1, "bio"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    .line 344
    const-string p1, "supportImage"

    .line 345
    const/4 v1, 0x0

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    .line 350
    const-string p1, "Source"

    .line 351
    .line 352
    const-string v1, "Edit Bio"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    .line 357
    const-string p1, "loggingSource"

    .line 358
    .line 359
    const-string v1, "UserProfileView"

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    invoke-static {p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 366
    .line 367
    goto/16 :goto_b

    .line 368
    .line 369
    :cond_f
    :goto_7
    if-nez p1, :cond_10

    .line 370
    goto :goto_8

    .line 371
    .line 372
    .line 373
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 374
    move-result v1

    .line 375
    .line 376
    .line 377
    const v3, 0x7f0a07c4

    .line 378
    .line 379
    if-ne v1, v3, :cond_11

    .line 380
    .line 381
    const-class p1, Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 382
    .line 383
    .line 384
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 385
    move-result-object p1

    .line 386
    .line 387
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 388
    .line 389
    .line 390
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    move-result-object v0

    .line 392
    .line 393
    const-string v1, "user"

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 400
    .line 401
    goto/16 :goto_b

    .line 402
    .line 403
    :cond_11
    :goto_8
    if-nez p1, :cond_12

    .line 404
    goto :goto_9

    .line 405
    .line 406
    .line 407
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 408
    move-result v1

    .line 409
    .line 410
    .line 411
    const v3, 0x7f0a07bb

    .line 412
    .line 413
    if-ne v1, v3, :cond_13

    .line 414
    .line 415
    const-class p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 416
    .line 417
    .line 418
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 419
    move-result-object p1

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 423
    move-result-object v0

    .line 424
    .line 425
    .line 426
    const v1, 0x7f1202ec

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 430
    move-result-object v0

    .line 431
    .line 432
    const-string v1, "title"

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 439
    move-result-object v0

    .line 440
    .line 441
    .line 442
    const v1, 0x7f120135

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 446
    move-result-object v0

    .line 447
    .line 448
    const-string v1, "subTitle"

    .line 449
    .line 450
    .line 451
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    .line 453
    const-string v0, "privilegeKey"

    .line 454
    .line 455
    const-string v1, "privilegeOfCommentOnUserProfile"

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    .line 460
    const-string v0, "isDarkTheme"

    .line 461
    .line 462
    .line 463
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    .line 465
    .line 466
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 467
    goto :goto_b

    .line 468
    .line 469
    :cond_13
    :goto_9
    if-nez p1, :cond_14

    .line 470
    goto :goto_a

    .line 471
    .line 472
    .line 473
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 474
    move-result v1

    .line 475
    .line 476
    .line 477
    const v2, 0x7f0a07c1

    .line 478
    .line 479
    if-ne v1, v2, :cond_15

    .line 480
    .line 481
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 482
    .line 483
    if-eqz p1, :cond_18

    .line 484
    .line 485
    sget-object v0, Lcom/narvii/master/home/profile/EditUsernameFragment;->Companion:Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;->intent(Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 489
    move-result-object p1

    .line 490
    .line 491
    .line 492
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 493
    goto :goto_b

    .line 494
    .line 495
    :cond_15
    :goto_a
    if-nez p1, :cond_16

    .line 496
    goto :goto_b

    .line 497
    .line 498
    .line 499
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 500
    move-result p1

    .line 501
    .line 502
    .line 503
    const v1, 0x7f0a019b

    .line 504
    .line 505
    if-ne p1, v1, :cond_18

    .line 506
    .line 507
    new-instance p1, Ljava/io/File;

    .line 508
    .line 509
    .line 510
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getDir()Ljava/io/File;

    .line 511
    move-result-object v1

    .line 512
    .line 513
    .line 514
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 518
    move-result v0

    .line 519
    .line 520
    if-nez v0, :cond_17

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 524
    .line 525
    :cond_17
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 526
    .line 527
    if-eqz v0, :cond_18

    .line 528
    .line 529
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 530
    .line 531
    if-eqz v0, :cond_18

    .line 532
    .line 533
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;

    .line 534
    .line 535
    .line 536
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;Lcom/narvii/media/MediaPickerFragment;)V

    .line 537
    .line 538
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 539
    .line 540
    .line 541
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, p1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->pickBackground(Lcom/narvii/model/User;)V

    .line 545
    :cond_18
    :goto_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->setAccountService(Lcom/narvii/account/AccountService;)V

    .line 20
    .line 21
    .line 22
    const p1, 0x7f120d1b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "mediaPicker"

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p1, v1

    .line 41
    .line 42
    :goto_0
    instance-of v2, p1, Lcom/narvii/media/MediaPickerFragment;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object p1, v1

    .line 49
    .line 50
    :goto_1
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 93
    .line 94
    :cond_3
    new-instance p1, Ljava/io/File;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    :cond_4
    const-string v0, "profiles"

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->setDir(Ljava/io/File;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getDir()Ljava/io/File;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 120
    .line 121
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->setProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02fd

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    const-string v0, "avatarFrameLoader"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    .line 9
    :goto_0
    instance-of v1, v1, Lcom/narvii/model/User;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "update"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v1, v0

    .line 34
    .line 35
    :goto_1
    iget-object v2, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    const-string v1, "null cannot be cast to non-null type com.narvii.model.User"

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/model/User;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 55
    const/4 p1, 0x0

    .line 56
    const/4 v1, 0x2

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v0, p1, v1, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateHeader()V

    .line 63
    :cond_2
    return-void
.end method

.method public onPickAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 6
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    .line 7
    .line 8
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 33
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 8
    return-void
.end method

.method public onStartSubmit()V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    return-void
.end method

.method public onSubmitFail(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    return-void
.end method

.method public onSubmitSuccess(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a0da0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/paging/state/PageStatusView;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setEmptyRetryListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setErrorRetryListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEditUsernameLayout()Landroid/widget/LinearLayout;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBtnEditAvatarFrame()Landroid/view/View;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEditAminoIdLayout()Landroid/widget/LinearLayout;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEditBioLayout()Landroid/widget/LinearLayout;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getLinkedCommunitiesLayout()Landroid/widget/LinearLayout;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getCommentPermissionLayout()Landroid/widget/LinearLayout;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const/4 p1, 0x1

    .line 99
    const/4 p2, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
    .line 102
    .line 103
    invoke-static {p0, v0, p1, p2}, Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/ProfileListFragment;ZILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public final postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
    .locals 5
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_c

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_c

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v2, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move-object v2, v1

    .line 33
    .line 34
    :goto_1
    if-eqz v2, :cond_5

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget-object v2, v2, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move-object v2, v1

    .line 43
    .line 44
    :goto_2
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    move-object v0, v1

    .line 53
    .line 54
    .line 55
    :goto_3
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_5
    const-string v0, "membership"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 69
    .line 70
    new-instance v2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 79
    move-result v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 83
    move-result v3

    .line 84
    const/4 v4, 0x1

    .line 85
    .line 86
    if-ne v3, v4, :cond_6

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/master/home/profile/h0;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p2}, Lcom/narvii/master/home/profile/h0;-><init>(Lcom/narvii/util/Callback;)V

    .line 92
    const/4 p2, 0x0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p1, p2, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    .line 96
    goto :goto_5

    .line 97
    .line 98
    :cond_6
    if-eqz p1, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 102
    move-result-object p2

    .line 103
    goto :goto_4

    .line 104
    :cond_7
    move-object p2, v1

    .line 105
    .line 106
    :goto_4
    if-eqz p1, :cond_8

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    :cond_8
    if-eqz p2, :cond_9

    .line 113
    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-eqz v1, :cond_9

    .line 121
    .line 122
    new-instance p2, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, p0, p1, v2}, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 129
    goto :goto_5

    .line 130
    .line 131
    :cond_9
    if-eqz p2, :cond_b

    .line 132
    .line 133
    iget p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 134
    const/4 p2, 0x2

    .line 135
    .line 136
    if-ne p1, p2, :cond_b

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 140
    move-result p1

    .line 141
    .line 142
    if-nez p1, :cond_b

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 146
    move-result p1

    .line 147
    .line 148
    if-eqz p1, :cond_a

    .line 149
    .line 150
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 151
    .line 152
    .line 153
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 157
    goto :goto_5

    .line 158
    .line 159
    :cond_a
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 166
    :cond_b
    :goto_5
    return-void

    .line 167
    .line 168
    :cond_c
    :goto_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public final sendGlobalProfileRequest(Z)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateViews()V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 31
    .line 32
    :cond_1
    new-instance v2, Lcom/narvii/master/home/profile/GlobalProfileHelper;

    .line 33
    const/4 v0, 0x2

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0, v1, v0, v1}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    new-instance v4, Lcom/narvii/master/home/profile/g0;

    .line 48
    .line 49
    .line 50
    invoke-direct {v4, p0, p1}, Lcom/narvii/master/home/profile/g0;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;Z)V

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    const/16 v7, 0x8

    .line 54
    const/4 v8, 0x0

    .line 55
    move v5, p1

    .line 56
    .line 57
    .line 58
    invoke-static/range {v2 .. v8}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setDir(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    return-void
.end method

.method public final setMediaPickerFragment(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 0
    .param p1    # Lcom/narvii/media/MediaPickerFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method

.method public final setProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 1
    .param p1    # Lcom/narvii/util/dialog/ProgressDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public final setRequestSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    return-void
.end method

.method protected final setStatusView(Lcom/narvii/paging/state/PageStatusView;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/state/PageStatusView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    return-void
.end method

.method public final setUser(Lcom/narvii/model/User;)V
    .locals 0
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    return-void
.end method

.method public final updateHeader()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x4

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvAminoId()Landroid/widget/TextView;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvAminoId()Landroid/widget/TextView;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAminoIdRightChevron()Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvAminoId()Landroid/widget/TextView;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const/high16 v1, 0x3f000000    # 0.5f

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAminoIdRightChevron()Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEdtNickname()Landroid/widget/TextView;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 73
    const/4 v2, 0x0

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move-object v1, v2

    .line 80
    .line 81
    :goto_1
    if-nez v1, :cond_3

    .line 82
    .line 83
    const-string v1, ""

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move-object v0, v2

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvBio()Landroid/widget/TextView;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 104
    move-result v5

    .line 105
    .line 106
    if-nez v5, :cond_5

    .line 107
    goto :goto_3

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-static {v0}, Lcom/narvii/util/text/NVText;->removeTitleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    goto :goto_4

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_3
    const v0, 0x7f120f1d

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V

    .line 141
    .line 142
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    iget-object v0, v0, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 152
    move-result v0

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    move v0, v4

    .line 155
    .line 156
    :goto_5
    const/16 v1, 0x8

    .line 157
    .line 158
    if-nez v0, :cond_8

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getCommunityLogolayout()Landroid/widget/LinearLayout;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    goto/16 :goto_b

    .line 168
    .line 169
    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getCommunityLogolayout()Landroid/widget/LinearLayout;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity1()Lcom/narvii/widget/NVImageView;

    .line 178
    move-result-object v5

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity2()Lcom/narvii/widget/NVImageView;

    .line 185
    move-result-object v5

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity3()Lcom/narvii/widget/NVImageView;

    .line 192
    move-result-object v5

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity4()Lcom/narvii/widget/NVImageView;

    .line 199
    move-result-object v5

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity5()Lcom/narvii/widget/NVImageView;

    .line 206
    move-result-object v5

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    if-lez v0, :cond_a

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity1()Lcom/narvii/widget/NVImageView;

    .line 215
    move-result-object v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity1()Lcom/narvii/widget/NVImageView;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    iget-object v5, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 225
    .line 226
    if-eqz v5, :cond_9

    .line 227
    .line 228
    iget-object v5, v5, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 229
    goto :goto_6

    .line 230
    :cond_9
    move-object v5, v2

    .line 231
    .line 232
    .line 233
    :goto_6
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v5

    .line 238
    .line 239
    check-cast v5, Lcom/narvii/model/Community;

    .line 240
    .line 241
    iget-object v5, v5, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 245
    :cond_a
    const/4 v1, 0x1

    .line 246
    .line 247
    if-le v0, v1, :cond_c

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity2()Lcom/narvii/widget/NVImageView;

    .line 251
    move-result-object v5

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity2()Lcom/narvii/widget/NVImageView;

    .line 258
    move-result-object v5

    .line 259
    .line 260
    iget-object v6, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 261
    .line 262
    if-eqz v6, :cond_b

    .line 263
    .line 264
    iget-object v6, v6, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 265
    goto :goto_7

    .line 266
    :cond_b
    move-object v6, v2

    .line 267
    .line 268
    .line 269
    :goto_7
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    check-cast v1, Lcom/narvii/model/Community;

    .line 276
    .line 277
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 281
    :cond_c
    const/4 v1, 0x2

    .line 282
    .line 283
    if-le v0, v1, :cond_e

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity3()Lcom/narvii/widget/NVImageView;

    .line 287
    move-result-object v5

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity3()Lcom/narvii/widget/NVImageView;

    .line 294
    move-result-object v5

    .line 295
    .line 296
    iget-object v6, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 297
    .line 298
    if-eqz v6, :cond_d

    .line 299
    .line 300
    iget-object v6, v6, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 301
    goto :goto_8

    .line 302
    :cond_d
    move-object v6, v2

    .line 303
    .line 304
    .line 305
    :goto_8
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    move-result-object v1

    .line 310
    .line 311
    check-cast v1, Lcom/narvii/model/Community;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 317
    :cond_e
    const/4 v1, 0x3

    .line 318
    .line 319
    if-le v0, v1, :cond_10

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity4()Lcom/narvii/widget/NVImageView;

    .line 323
    move-result-object v5

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity4()Lcom/narvii/widget/NVImageView;

    .line 330
    move-result-object v5

    .line 331
    .line 332
    iget-object v6, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 333
    .line 334
    if-eqz v6, :cond_f

    .line 335
    .line 336
    iget-object v6, v6, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 337
    goto :goto_9

    .line 338
    :cond_f
    move-object v6, v2

    .line 339
    .line 340
    .line 341
    :goto_9
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 345
    move-result-object v1

    .line 346
    .line 347
    check-cast v1, Lcom/narvii/model/Community;

    .line 348
    .line 349
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 353
    .line 354
    :cond_10
    if-le v0, v3, :cond_12

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity5()Lcom/narvii/widget/NVImageView;

    .line 358
    move-result-object v0

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity5()Lcom/narvii/widget/NVImageView;

    .line 365
    move-result-object v0

    .line 366
    .line 367
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 368
    .line 369
    if-eqz v1, :cond_11

    .line 370
    .line 371
    iget-object v1, v1, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 372
    goto :goto_a

    .line 373
    :cond_11
    move-object v1, v2

    .line 374
    .line 375
    .line 376
    :goto_a
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 380
    move-result-object v1

    .line 381
    .line 382
    check-cast v1, Lcom/narvii/model/Community;

    .line 383
    .line 384
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    :cond_12
    :goto_b
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvCommentPermission()Landroid/widget/TextView;

    .line 391
    move-result-object v0

    .line 392
    .line 393
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 394
    .line 395
    if-eqz v1, :cond_13

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 399
    move-result-object v2

    .line 400
    .line 401
    const-string v3, "privilegeOfCommentOnUserProfile"

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v2, v3}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    move-result-object v2

    .line 406
    .line 407
    .line 408
    :cond_13
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    return-void
.end method

.method public final updateViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    iget-boolean v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v3, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getContentLayout()Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v1, v2

    .line 28
    .line 29
    .line 30
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    return-void
.end method
