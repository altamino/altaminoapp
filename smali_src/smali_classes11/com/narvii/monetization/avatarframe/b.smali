.class public final synthetic Lcom/narvii/monetization/avatarframe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

.field public final synthetic b:Lcom/narvii/monetization/avatarframe/AvatarFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/b;->a:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/b;->b:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/b;->a:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/b;->b:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->t(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;Ljava/lang/Boolean;)V

    return-void
.end method
