.class Lcom/narvii/amino/HomeFragment$Adapter;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/HomeFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 7
    .line 8
    if-eqz v1, :cond_9

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 12
    .line 13
    new-instance v2, Lcom/narvii/services/ServiceManager;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    new-instance v3, Lcom/narvii/services/ApiServiceProvider;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    .line 22
    .line 23
    const-string v4, "api"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->setEmbedServiceManager(Lcom/narvii/services/ServiceManager;)V

    .line 30
    .line 31
    instance-of v2, v1, Lcom/narvii/list/NVListFragment;

    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/list/NVListFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    instance-of v2, v1, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lcom/narvii/paging/NVRecyclerViewFragment;->setOverScrollMode(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Lcom/narvii/paging/NVRecyclerViewFragment;->setSwipeRefreshEnabled(Z)V

    .line 57
    .line 58
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    .line 61
    const/4 v2, 0x0

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 67
    move-result v1

    .line 68
    .line 69
    if-ge p1, v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    check-cast v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-object v1, v2

    .line 82
    .line 83
    :goto_1
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 91
    move-result v3

    .line 92
    .line 93
    if-ge p1, v3, :cond_3

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    move-object v2, p1

    .line 103
    .line 104
    check-cast v2, Lcom/narvii/modulization/page/Page;

    .line 105
    .line 106
    :cond_3
    if-eqz v1, :cond_8

    .line 107
    .line 108
    if-eqz v2, :cond_8

    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v3, "home tab ["

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "] created: "

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    iget-object v2, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    iget-object v2, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 138
    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    const-string v2, " ["

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    iget-object v2, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    .line 157
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v3

    .line 159
    .line 160
    if-eqz v3, :cond_6

    .line 161
    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    check-cast v3, Ljava/lang/String;

    .line 167
    .line 168
    const-string v5, "_"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 172
    move-result v5

    .line 173
    .line 174
    if-eqz v5, :cond_4

    .line 175
    goto :goto_2

    .line 176
    .line 177
    :cond_4
    if-eqz v4, :cond_5

    .line 178
    .line 179
    const-string v5, ", "

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_3

    .line 184
    :cond_5
    const/4 v4, 0x1

    .line 185
    .line 186
    .line 187
    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const/16 v5, 0x3d

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    iget-object v5, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    move-result-object v3

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    goto :goto_2

    .line 203
    .line 204
    :cond_6
    const-string v1, "]"

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    .line 213
    .line 214
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 215
    goto :goto_4

    .line 216
    .line 217
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    const-string v1, "home tab "

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v1, " created"

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 249
    :cond_9
    :goto_4
    return-object v0
.end method
