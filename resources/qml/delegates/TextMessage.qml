import ".."
import im.nheko 1.0

MatrixText {
    property string formatted: model.data.formattedBody

    text: "<span style='white-space: pre-wrap'><style type=\"text/css\">a { color:" + colors.link + ";}\ncode { background-color: " + colors.alternateBase + ";}</style>" + formatted.replace("<pre>", "<pre style='white-space: pre-wrap; background-color: " + colors.alternateBase + "'>") + "</span>"
    width: parent ? parent.width : undefined
    height: isReply ? Math.round(Math.min(timelineRoot.height / 8, implicitHeight)) : undefined
    clip: isReply
    font.pointSize: (Settings.enlargeEmojiOnlyMessages && model.data.isOnlyEmoji > 0 && model.data.isOnlyEmoji < 4) ? Settings.fontSize * 3 : Settings.fontSize
}
