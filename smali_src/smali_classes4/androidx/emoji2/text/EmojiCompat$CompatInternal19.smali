.class final Landroidx/emoji2/text/EmojiCompat$CompatInternal19;
.super Landroidx/emoji2/text/EmojiCompat$CompatInternal;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatInternal19"
.end annotation


# instance fields
.field private volatile mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private volatile mProcessor:Landroidx/emoji2/text/EmojiProcessor;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    .line 4
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal19$1;-><init>(Landroidx/emoji2/text/EmojiCompat$CompatInternal19;)V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->a(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/EmojiCompat;->m(Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    return-void
.end method

.method b(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;->mProcessor:Landroidx/emoji2/text/EmojiProcessor;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiProcessor;->h(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method c(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->e()I

    .line 8
    move-result v1

    .line 9
    .line 10
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 18
    .line 19
    iget-boolean v0, v0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    .line 20
    .line 21
    const-string v1, "android.support.text.emoji.emojiCompat_replaceAll"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    return-void
.end method

.method d(Landroidx/emoji2/text/MetadataRepo;)V
    .locals 8
    .param p1    # Landroidx/emoji2/text/MetadataRepo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "metadataRepo cannot be null"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/emoji2/text/EmojiCompat;->m(Ljava/lang/Throwable;)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 18
    .line 19
    new-instance p1, Landroidx/emoji2/text/EmojiProcessor;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 22
    .line 23
    new-instance v4, Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4}, Landroidx/emoji2/text/EmojiCompat$SpanFactory;-><init>()V

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/emoji2/text/EmojiCompat;->a(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 35
    .line 36
    iget-boolean v6, v0, Landroidx/emoji2/text/EmojiCompat;->mUseEmojiAsDefaultStyle:Z

    .line 37
    .line 38
    iget-object v7, v0, Landroidx/emoji2/text/EmojiCompat;->mEmojiAsDefaultStyleExceptions:[I

    .line 39
    move-object v2, p1

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/EmojiProcessor;-><init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[I)V

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;->mProcessor:Landroidx/emoji2/text/EmojiProcessor;

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiCompat;->n()V

    .line 50
    return-void
.end method
