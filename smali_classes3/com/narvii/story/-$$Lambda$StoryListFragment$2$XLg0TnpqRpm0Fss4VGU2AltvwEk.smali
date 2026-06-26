.class public final synthetic Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;

    invoke-direct {v0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;-><init>()V

    sput-object v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;->INSTANCE:Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;

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

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment$2;->lambda$run$0(Lcom/narvii/story/StoryListVisibleChangeListener;)V

    return-void
.end method
