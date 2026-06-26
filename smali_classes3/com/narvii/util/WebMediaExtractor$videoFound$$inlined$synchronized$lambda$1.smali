.class final Lcom/narvii/util/WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1;
.super Ljava/lang/Object;
.source "WebMediaExtractor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/WebMediaExtractor;->videoFound(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $url$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/util/WebMediaExtractor;


# direct methods
.method constructor <init>(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    iput-object p2, p0, Lcom/narvii/util/WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1;->$url$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1;->$url$inlined:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/util/WebMediaExtractor;->onVideoFound(Ljava/lang/String;)V

    return-void
.end method
