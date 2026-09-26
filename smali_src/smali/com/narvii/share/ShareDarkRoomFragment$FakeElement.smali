.class Lcom/narvii/share/ShareDarkRoomFragment$FakeElement;
.super Lcom/narvii/share/elements/BaseElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/share/ShareDarkRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeElement"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/share/ShareDarkRoomFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/share/ShareDarkRoomFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment$FakeElement;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/share/elements/BaseElement;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment$FakeElement;->name:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public color()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public share(Lcom/narvii/share/SharePayload;)V
    .locals 0

    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$FakeElement;->name:Ljava/lang/String;

    return-object v0
.end method
