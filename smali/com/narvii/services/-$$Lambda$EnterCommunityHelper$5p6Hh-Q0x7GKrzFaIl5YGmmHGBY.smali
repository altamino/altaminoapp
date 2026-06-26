.class public final synthetic Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/theme/ThemePackService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/narvii/model/Community;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;->f$0:Lcom/narvii/theme/ThemePackService;

    iput p2, p0, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;->f$1:I

    iput-object p3, p0, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;->f$2:Lcom/narvii/model/Community;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;->f$0:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;->f$1:I

    iget-object v2, p0, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;->f$2:Lcom/narvii/model/Community;

    invoke-static {v0, v1, v2}, Lcom/narvii/services/EnterCommunityHelper;->lambda$start$0(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V

    return-void
.end method
