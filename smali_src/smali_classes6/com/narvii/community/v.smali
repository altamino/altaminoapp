.class public final synthetic Lcom/narvii/community/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Le8/l;


# direct methods
.method public synthetic constructor <init>(Le8/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/v;->a:Le8/l;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/community/v;->a:Le8/l;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/narvii/community/MyCommunityHelper;->a(Le8/l;Ljava/lang/Integer;)V

    return-void
.end method
