.class public Lcom/narvii/blog/detail/BlogDetailFragment;
.super Lcom/narvii/detail/FeedDetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/theme/IFakeActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;,
        Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;,
        Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailFragment<",
        "Lcom/narvii/model/Blog;",
        ">;",
        "Lcom/narvii/app/FragmentOnBackListener;",
        "Lcom/narvii/theme/IFakeActionBar;"
    }
.end annotation


# static fields
.field static final ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final ADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;"
        }
    .end annotation
.end field

.field static final AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final REQUEST_CHANGE_CATELOG:I = 0xc9

.field static final TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private actionBarOverlay:Landroid/view/View;

.field advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

.field private draftManager:Lcom/narvii/post/DraftManager;

.field private entryManager:Lcom/narvii/modulization/entry/EntryManager;

.field fakeActionBar:Landroid/view/View;

.field isAnnouncement:Z

.field private longClickVote:Landroid/view/View$OnLongClickListener;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field public onFinishListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field optinPaidAds:Z

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private relatedCommunities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private showingBlogTitle:Z

.field stated:Z

.field private topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

.field voteIconView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.title"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 12
    .line 13
    const-string v1, "detail.user-vote"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    .line 22
    const-string v1, "detail.address"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 30
    .line 31
    const-string v1, "detail.quiz"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 39
    .line 40
    const-string v1, "detail.ref-null"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 48
    .line 49
    const-string v1, "detail.ref-disable"

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 57
    .line 58
    const-string v1, "detail.likes"

    .line 59
    .line 60
    .line 61
    const v2, 0x7f120b90

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 69
    .line 70
    const-string v1, "detail.snippet"

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 78
    .line 79
    const-string v1, "detail.readit"

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 85
    .line 86
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 87
    .line 88
    const-string v1, "detail.link.custom.title"

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 94
    .line 95
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 96
    .line 97
    const-string v1, "detail.related.aminos"

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 103
    .line 104
    const/16 v0, 0x14

    .line 105
    .line 106
    new-array v0, v0, [Lcom/narvii/detail/DetailAdapter$CellType;

    .line 107
    .line 108
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 109
    .line 110
    const-string v2, "adbanner1"

    .line 111
    const/4 v3, 0x0

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 115
    .line 116
    aput-object v1, v0, v3

    .line 117
    .line 118
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 119
    .line 120
    const-string v2, "adbanner2"

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 124
    const/4 v2, 0x1

    .line 125
    .line 126
    aput-object v1, v0, v2

    .line 127
    .line 128
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 129
    .line 130
    const-string v2, "adbanner3"

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 134
    const/4 v2, 0x2

    .line 135
    .line 136
    aput-object v1, v0, v2

    .line 137
    .line 138
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 139
    .line 140
    const-string v2, "adbanner4"

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 144
    const/4 v2, 0x3

    .line 145
    .line 146
    aput-object v1, v0, v2

    .line 147
    .line 148
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 149
    .line 150
    const-string v2, "adbanner5"

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 154
    const/4 v2, 0x4

    .line 155
    .line 156
    aput-object v1, v0, v2

    .line 157
    .line 158
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 159
    .line 160
    const-string v2, "adbanner6"

    .line 161
    .line 162
    .line 163
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 164
    const/4 v2, 0x5

    .line 165
    .line 166
    aput-object v1, v0, v2

    .line 167
    .line 168
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 169
    .line 170
    const-string v2, "adbanner7"

    .line 171
    .line 172
    .line 173
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 174
    const/4 v2, 0x6

    .line 175
    .line 176
    aput-object v1, v0, v2

    .line 177
    .line 178
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 179
    .line 180
    const-string v2, "adbanner8"

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 184
    const/4 v2, 0x7

    .line 185
    .line 186
    aput-object v1, v0, v2

    .line 187
    .line 188
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 189
    .line 190
    const-string v2, "adbanner9"

    .line 191
    .line 192
    .line 193
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 194
    .line 195
    const/16 v2, 0x8

    .line 196
    .line 197
    aput-object v1, v0, v2

    .line 198
    .line 199
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 200
    .line 201
    const-string v2, "adbanner10"

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 205
    .line 206
    const/16 v2, 0x9

    .line 207
    .line 208
    aput-object v1, v0, v2

    .line 209
    .line 210
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 211
    .line 212
    const-string v2, "adbanner11"

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 216
    .line 217
    const/16 v2, 0xa

    .line 218
    .line 219
    aput-object v1, v0, v2

    .line 220
    .line 221
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 222
    .line 223
    const-string v2, "adbanner12"

    .line 224
    .line 225
    .line 226
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 227
    .line 228
    const/16 v2, 0xb

    .line 229
    .line 230
    aput-object v1, v0, v2

    .line 231
    .line 232
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 233
    .line 234
    const-string v2, "adbanner13"

    .line 235
    .line 236
    .line 237
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 238
    .line 239
    const/16 v2, 0xc

    .line 240
    .line 241
    aput-object v1, v0, v2

    .line 242
    .line 243
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 244
    .line 245
    const-string v2, "adbanner14"

    .line 246
    .line 247
    .line 248
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 249
    .line 250
    const/16 v2, 0xd

    .line 251
    .line 252
    aput-object v1, v0, v2

    .line 253
    .line 254
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 255
    .line 256
    const-string v2, "adbanner15"

    .line 257
    .line 258
    .line 259
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 260
    .line 261
    const/16 v2, 0xe

    .line 262
    .line 263
    aput-object v1, v0, v2

    .line 264
    .line 265
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 266
    .line 267
    const-string v2, "adbanner16"

    .line 268
    .line 269
    .line 270
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 271
    .line 272
    const/16 v2, 0xf

    .line 273
    .line 274
    aput-object v1, v0, v2

    .line 275
    .line 276
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 277
    .line 278
    const-string v2, "adbanner17"

    .line 279
    .line 280
    .line 281
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 282
    .line 283
    const/16 v2, 0x10

    .line 284
    .line 285
    aput-object v1, v0, v2

    .line 286
    .line 287
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 288
    .line 289
    const-string v2, "adbanner18"

    .line 290
    .line 291
    .line 292
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 293
    .line 294
    const/16 v2, 0x11

    .line 295
    .line 296
    aput-object v1, v0, v2

    .line 297
    .line 298
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 299
    .line 300
    const-string v2, "adbanner19"

    .line 301
    .line 302
    .line 303
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 304
    .line 305
    const/16 v2, 0x12

    .line 306
    .line 307
    aput-object v1, v0, v2

    .line 308
    .line 309
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 310
    .line 311
    const-string v2, "adbanner20"

    .line 312
    .line 313
    .line 314
    invoke-direct {v1, v2, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 315
    .line 316
    const/16 v2, 0x13

    .line 317
    .line 318
    aput-object v1, v0, v2

    .line 319
    .line 320
    .line 321
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 322
    move-result-object v0

    .line 323
    .line 324
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADS:Ljava/util/List;

    .line 325
    .line 326
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 327
    .line 328
    const-string v1, "adbanner_abovecomment"

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 332
    .line 333
    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 334
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$4;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$4;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    .line 11
    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic N(Lcom/narvii/blog/detail/BlogDetailFragment;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static bridge synthetic O(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->relatedCommunities:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic P(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->showingBlogTitle:Z

    return p0
.end method

.method static bridge synthetic Q(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->categories:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->relatedCommunities:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic S(Lcom/narvii/blog/detail/BlogDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->showingBlogTitle:Z

    return-void
.end method

.method private SendVisitPostAnalytics(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->getBlogTypeString(Lcom/narvii/model/Blog;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v1, "post_type"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v1, "view_post"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method static bridge synthetic T(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->setTypeTitle(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method static bridge synthetic U(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->updateBackground()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tryReportActiveStatus()V

    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendFeedUpdateGlobalNotification(Lcom/narvii/model/Feed;)V

    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 3
    return p0
.end method

.method static synthetic access$1402(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    .line 3
    return p1
.end method

.method static synthetic access$1502(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    .line 3
    return p1
.end method

.method static synthetic access$1602(Lcom/narvii/blog/detail/BlogDetailFragment;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p1
.end method

.method static synthetic access$1700(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    .line 4
    return-void
.end method

.method static synthetic access$1800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 3
    return p0
.end method

.method static synthetic access$2000(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method static synthetic access$2100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 3
    return p0
.end method

.method static synthetic access$2200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2300(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    .line 4
    return-void
.end method

.method static synthetic access$2400(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 3
    return p0
.end method

.method static synthetic access$2700(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2900(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    return-object p0
.end method

.method static synthetic access$3000(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3100(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method static synthetic access$3200(Lcom/narvii/blog/detail/BlogDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->getAdView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$3300(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method static synthetic access$3400(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 3
    return p0
.end method

.method static synthetic access$3600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 3
    return p0
.end method

.method static synthetic access$3700(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3900(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    .line 4
    return-void
.end method

.method static synthetic access$4000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$4100(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$4200(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$4300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    return-object p0
.end method

.method static synthetic access$4400(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    return-object p0
.end method

.method static synthetic access$4500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$500(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipDone()V

    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method private changeListViewMargin()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->getListViewMarginTop()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->setMarginTop(Landroid/view/View;I)V

    .line 14
    :cond_0
    return-void
.end method

.method private getBlogTypeString(Lcom/narvii/model/Blog;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    .line 5
    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    const/16 v0, 0x17

    .line 9
    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    const/4 v0, 0x4

    .line 15
    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    const/4 v0, 0x5

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    const/4 v0, 0x6

    .line 21
    .line 22
    if-eq p1, v0, :cond_4

    .line 23
    const/4 v0, 0x7

    .line 24
    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_0
    const-string p1, "image"

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_1
    const-string p1, "link"

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_2
    const-string p1, "poll"

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_3
    const-string p1, "question"

    .line 42
    return-object p1

    .line 43
    .line 44
    :cond_4
    const-string p1, "quiz"

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_5
    const-string p1, "blog"

    .line 48
    return-object p1

    .line 49
    .line 50
    :cond_6
    const-string p1, ""

    .line 51
    return-object p1
.end method

.method private getListViewMarginTop()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getTotalOverlaySize()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method private setTypeTitle(Lcom/narvii/model/Blog;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f120149

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    .line 14
    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    const p1, 0x7f1203c7

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    const p1, 0x7f1203cc

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :pswitch_1
    const p1, 0x7f120f31

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :pswitch_2
    const p1, 0x7f1203d2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_3
    const p1, 0x7f120eeb

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :pswitch_4
    const p1, 0x7f1203d0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :pswitch_5
    const p1, 0x7f1203d1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 65
    :goto_0
    return-void

    .line 66
    nop

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBackground()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->updateFakeActionBarThemeUI()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    const/4 v2, -0x1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/model/Blog;

    .line 57
    .line 58
    if-nez v0, :cond_4

    .line 59
    return-void

    .line 60
    .line 61
    :cond_4
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    const/4 v3, 0x1

    .line 66
    .line 67
    new-array v3, v3, [Lcom/narvii/image/BackgroundSource;

    .line 68
    .line 69
    aput-object v0, v3, v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    if-nez v1, :cond_6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 89
    move-result v0

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v0, v2

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->updateSBB(I)V

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 102
    move-result v1

    .line 103
    .line 104
    iget v3, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v3}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    .line 108
    .line 109
    :cond_7
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->n(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->n(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 125
    move-result v1

    .line 126
    .line 127
    iget v3, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1, v3}, Lcom/narvii/poll/PollAdapter;->setDarkTheme(ZI)V

    .line 131
    .line 132
    :cond_8
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 138
    move-result v1

    .line 139
    .line 140
    iget v3, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1, v3}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    .line 144
    .line 145
    .line 146
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 147
    move-result v0

    .line 148
    .line 149
    if-eqz v0, :cond_b

    .line 150
    .line 151
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 152
    .line 153
    if-nez v0, :cond_b

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_a

    .line 160
    goto :goto_3

    .line 161
    .line 162
    :cond_a
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->actionBarOverlay:Landroid/view/View;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    goto :goto_4

    .line 167
    .line 168
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->actionBarOverlay:Landroid/view/View;

    .line 169
    .line 170
    const/16 v1, 0x8

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_4
    return-void
.end method


# virtual methods
.method protected bookmark(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$7;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$7;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 25
    return-void
.end method

.method protected bottomComment()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->commentNew()V

    .line 17
    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    sget-object p2, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$1;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->setFlags(I)V

    .line 26
    .line 27
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/blog/detail/a;)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    .line 34
    .line 35
    new-array v1, v0, [Landroid/view/View;

    .line 36
    .line 37
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    aput-object v2, v1, v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    .line 79
    iget-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 80
    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 84
    .line 85
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, p0, p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    .line 95
    move-result p1

    .line 96
    .line 97
    if-nez p1, :cond_1

    .line 98
    .line 99
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 103
    .line 104
    .line 105
    const v0, 0x7f0d0079

    .line 106
    .line 107
    .line 108
    filled-new-array {v0}, [I

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    .line 119
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 120
    return-object p1
.end method

.method protected disableOptinAds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDisableStrId(Lcom/narvii/model/NVObject;)I
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    move-object v0, p1

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUserItSelf(Lcom/narvii/model/User;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    const p1, 0x7f1204ba

    .line 28
    return p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->getDetailObjectDisableStrId()I

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->getDisableStrId(Lcom/narvii/model/NVObject;)I

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/detail/FeedDetailAdapter<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    return-object v0
.end method

.method protected getHoveFrameMarginTop()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->getListViewMarginTop()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "users-browsing-blog-at"

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "blog_detail"

    return-object v0
.end method

.method public getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string v1, "__savedInstanceState"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected hoverBelowOverlayPlaceHolder()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public isHover(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_2
    return v1
.end method

.method public isPageBackgroundEnabled()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method protected objectType()I
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x83

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onActiveChanged(Z)V

    .line 4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->n(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    const v0, 0xf601

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->n(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/poll/PollAdapter;->onActivityResult(IILandroid/content/Intent;)V

    .line 23
    .line 24
    :cond_0
    const/16 v0, 0xc9

    .line 25
    const/4 v1, -0x1

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    if-ne p2, v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    const v2, 0x7f120212

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 49
    .line 50
    :cond_1
    const/16 v0, 0x6f

    .line 51
    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    if-ne p2, v1, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 57
    .line 58
    const-string v1, "collectionId"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->commentNew(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "__savedInstanceState"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    .line 41
    const-string v0, "isAnnouncement"

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    .line 53
    const v0, 0x7f120149

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    const v0, 0x7f1203c7

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 64
    .line 65
    :goto_0
    if-eqz p1, :cond_2

    .line 66
    .line 67
    const-string v0, "stated"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 71
    move-result p1

    .line 72
    .line 73
    iput-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    .line 74
    .line 75
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    .line 76
    .line 77
    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    const/4 p1, 0x4

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p1}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;I)Z

    .line 89
    move-result p1

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->disableOptinAds()Z

    .line 95
    move-result p1

    .line 96
    .line 97
    if-nez p1, :cond_3

    .line 98
    const/4 v1, 0x1

    .line 99
    .line 100
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->optinPaidAds:Z

    .line 101
    .line 102
    new-instance p1, Lcom/narvii/modulization/entry/EntryManager;

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    .line 108
    .line 109
    const-string p1, "draft"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    check-cast p1, Lcom/narvii/post/DraftManager;

    .line 116
    .line 117
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 118
    .line 119
    const-string p1, "account"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 128
    .line 129
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 133
    .line 134
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->hideBottomAdsView()V

    .line 138
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    .line 9
    const v0, 0x7f120349

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 21
    .line 22
    .line 23
    const p2, 0x7f1201bb

    .line 24
    const/4 v0, 0x7

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    .line 33
    .line 34
    const p2, 0x7f121204

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 42
    .line 43
    const/16 p2, 0xa

    .line 44
    .line 45
    .line 46
    const v0, 0x7f12009d

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 54
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->changeListViewMargin()V

    .line 7
    .line 8
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    move-object p2, p1

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$2;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Landroid/widget/ListView;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 22
    :cond_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "vote"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    const-string v1, "voteFromBottom"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_0
    const-string p1, "voteValue"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object p1, v2

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v2, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    .line 58
    return-void

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f12009d

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    .line 13
    const v1, 0x7f1201bb

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    .line 18
    const v1, 0x7f121204

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    const v1, 0x7f120349

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "clipboard"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Landroid/content/ClipboardManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/model/Blog;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/model/Feed;->shareURLFullPath:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    const v0, 0x7f1210bd

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    return v2

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 76
    move-result p1

    .line 77
    return p1

    .line 78
    .line 79
    :cond_1
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$3;

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$3;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 95
    return v2

    .line 96
    .line 97
    :cond_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 101
    .line 102
    const-string p1, "Post Detail Menu"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 106
    return v2

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->showModerationDialog()V

    .line 110
    return v2
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 19
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    const v0, 0x7f120349

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 22
    .line 23
    .line 24
    const v2, 0x7f1201bb

    .line 25
    .line 26
    .line 27
    const v3, 0x7f121204

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 49
    .line 50
    iget-boolean v5, v3, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 51
    .line 52
    const/16 v6, 0x9

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    check-cast v3, Lcom/narvii/model/Blog;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->status()I

    .line 72
    move-result v3

    .line 73
    .line 74
    if-eq v3, v6, :cond_1

    .line 75
    move v3, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v3, v4

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 87
    .line 88
    iget-boolean v3, v2, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 89
    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    check-cast v2, Lcom/narvii/model/Blog;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->status()I

    .line 108
    move-result v2

    .line 109
    .line 110
    if-eq v2, v6, :cond_2

    .line 111
    move v2, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move v2, v4

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    .line 133
    :goto_2
    const-string v0, "account"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 155
    move-result v0

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-nez v0, :cond_4

    .line 164
    goto :goto_3

    .line 165
    :cond_4
    move v1, v4

    .line 166
    .line 167
    .line 168
    :goto_3
    const v0, 0x7f12009d

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "stated"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0550

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0061

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->actionBarOverlay:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/model/Feed;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->SendVisitPostAnalytics(Lcom/narvii/model/Feed;)V

    .line 36
    return-void
.end method

.method public setDisabledStatus(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->changeListViewMargin()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->resetHover()V

    .line 16
    :cond_0
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 18
    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/Comment;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    :cond_3
    :goto_0
    return v1

    .line 30
    .line 31
    .line 32
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_7

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 38
    .line 39
    if-ne p1, v0, :cond_5

    .line 40
    return v1

    .line 41
    .line 42
    .line 43
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-eqz p1, :cond_6

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string v0, "Page Detailed View"

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1, v0}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    .line 56
    :cond_6
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    .line 59
    .line 60
    :cond_7
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    return p1
.end method

.method protected shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Blog;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/model/Blog;->isAccessibleByUserIgnoreRefObject(Lcom/narvii/model/User;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method protected shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const-string p1, "account"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/model/Blog;->isAccessibleByUserIgnoreRefObject(Lcom/narvii/model/User;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    xor-int/lit8 p1, p1, 0x1

    .line 31
    return p1

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method protected showBottomBar()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailFragment;->showBottomBar()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected showModerationDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->categories:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->attachBlogCateLog(Ljava/util/List;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 29
    return-void
.end method

.method protected unVote()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    .line 6
    return-void
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->hasPageBackground()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v0, v1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 66
    .line 67
    :goto_1
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_4
    return-void
.end method

.method protected vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f12120e

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 35
    .line 36
    .line 37
    const v1, 0x7f1202e7

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 42
    .line 43
    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$5;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p0, p2, p3, v0}, Lcom/narvii/blog/detail/BlogDetailFragment$5;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/util/http/ApiService;ZLcom/narvii/model/Blog;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_0
    if-nez v1, :cond_1

    .line 56
    .line 57
    sget-object p1, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    if-eqz p3, :cond_2

    .line 67
    .line 68
    const-string v3, "BottomArea"

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    const-string v3, "EngagementArea"

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {p1, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 87
    .line 88
    if-eqz p3, :cond_4

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    .line 96
    move-result v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 100
    move-result v3

    .line 101
    .line 102
    if-nez v3, :cond_3

    .line 103
    move v3, v2

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    const/4 v3, 0x2

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    const v4, 0x7f0a0201

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v4, v3}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onStart(ILjava/lang/Object;)V

    .line 116
    .line 117
    :cond_4
    if-eqz p3, :cond_5

    .line 118
    .line 119
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->SBB:Lcom/narvii/util/logging/LoggingSource;

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_5
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 123
    .line 124
    :goto_3
    if-eqz v1, :cond_6

    .line 125
    .line 126
    if-nez p3, :cond_6

    .line 127
    .line 128
    const-string v3, "statistics"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    check-cast v3, Lcom/narvii/util/statistics/StatisticsService;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->objectType()I

    .line 138
    move-result v4

    .line 139
    .line 140
    .line 141
    invoke-static {p0, v0, v4}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 142
    move-result-object v4

    .line 143
    .line 144
    const-string v5, "Like Post"

    .line 145
    .line 146
    .line 147
    invoke-interface {v3, v5}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 148
    move-result-object v3

    .line 149
    .line 150
    const-string v5, "Likes Total"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    const-string v5, "post_type"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 160
    move-result-object v3

    .line 161
    .line 162
    const-string v4, "Page Detailed View"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    .line 169
    invoke-static {p0, v3}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 173
    move-result-object v3

    .line 174
    .line 175
    .line 176
    invoke-static {v3, v0, v1}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 177
    .line 178
    new-instance v3, Lcom/narvii/story/detail/VoteHelper;

    .line 179
    .line 180
    .line 181
    invoke-direct {v3, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 182
    .line 183
    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 184
    .line 185
    const-string p1, "loggingOrigin"

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    new-instance v4, Lcom/narvii/blog/detail/BlogDetailFragment$6;

    .line 198
    .line 199
    .line 200
    invoke-direct {v4, p0, p3, v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$6;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;ZLcom/narvii/model/Blog;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v0, p1, p2, v4}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 206
    .line 207
    .line 208
    invoke-static {p1, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->o(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Z)V

    .line 209
    .line 210
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 214
    return-void
.end method
