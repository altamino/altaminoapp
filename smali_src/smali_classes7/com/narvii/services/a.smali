.class public final synthetic Lcom/narvii/services/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/theme/ThemePackService;

.field public final synthetic b:I

.field public final synthetic c:Lcom/narvii/model/Community;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/a;->a:Lcom/narvii/theme/ThemePackService;

    iput p2, p0, Lcom/narvii/services/a;->b:I

    iput-object p3, p0, Lcom/narvii/services/a;->c:Lcom/narvii/model/Community;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/services/a;->a:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/services/a;->b:I

    iget-object v2, p0, Lcom/narvii/services/a;->c:Lcom/narvii/model/Community;

    invoke-static {v0, v1, v2}, Lcom/narvii/services/EnterCommunityHelper;->a(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V

    return-void
.end method
