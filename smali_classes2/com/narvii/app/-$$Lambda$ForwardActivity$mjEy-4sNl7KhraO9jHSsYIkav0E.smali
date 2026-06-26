.class public final synthetic Lcom/narvii/app/-$$Lambda$ForwardActivity$mjEy-4sNl7KhraO9jHSsYIkav0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/app/ForwardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/ForwardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/-$$Lambda$ForwardActivity$mjEy-4sNl7KhraO9jHSsYIkav0E;->f$0:Lcom/narvii/app/ForwardActivity;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/-$$Lambda$ForwardActivity$mjEy-4sNl7KhraO9jHSsYIkav0E;->f$0:Lcom/narvii/app/ForwardActivity;

    check-cast p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;

    invoke-virtual {v0, p1}, Lcom/narvii/app/ForwardActivity;->lambda$onCreate$0$ForwardActivity(Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;)V

    return-void
.end method
