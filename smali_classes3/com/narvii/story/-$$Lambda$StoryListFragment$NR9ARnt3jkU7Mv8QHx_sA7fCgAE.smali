.class public final synthetic Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;

    invoke-direct {v0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;-><init>()V

    sput-object v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;->INSTANCE:Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/narvii/story/StoryListVisibleChangeListener;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->lambda$dismissCurrentPage$7(Lcom/narvii/story/StoryListVisibleChangeListener;)V

    return-void
.end method
