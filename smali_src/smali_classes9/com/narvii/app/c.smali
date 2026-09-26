.class public final synthetic Lcom/narvii/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/app/ForwardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/ForwardActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/c;->a:Lcom/narvii/app/ForwardActivity;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/app/c;->a:Lcom/narvii/app/ForwardActivity;

    check-cast p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;

    invoke-static {v0, p1}, Lcom/narvii/app/ForwardActivity;->s(Lcom/narvii/app/ForwardActivity;Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;)V

    return-void
.end method
