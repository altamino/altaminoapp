.class Lcom/narvii/user/feature/FeatureUserHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/feature/FeatureUserHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/feature/FeatureUserHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/user/feature/FeatureUserHelper;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper$1;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/feature/FeatureUserHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper$1;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 9
    const/4 p2, 0x2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Lcom/narvii/user/feature/FeatureUserHelper;->a(Lcom/narvii/user/feature/FeatureUserHelper;ILcom/narvii/util/Callback;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object p2, p0, Lcom/narvii/user/feature/FeatureUserHelper$1;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1, v0}, Lcom/narvii/user/feature/FeatureUserHelper;->a(Lcom/narvii/user/feature/FeatureUserHelper;ILcom/narvii/util/Callback;)V

    .line 23
    :goto_0
    return-void
.end method
