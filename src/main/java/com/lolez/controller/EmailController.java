package com.lolez.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmailController {

	// 메일 전송을 위한 객체 DI
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping(value = "/email")
	public int emailCertify(String email) throws Exception {
		System.out.println("이메일 TEST");
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

		String emailContent = "<!DOCTYPE html>" + "<html lang=\"en\">" + "<head>" + "    <meta charset=\"UTF-8\">"
				+ "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">"
				+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"
				+ "    <title>Document</title>" + "</head>" + "<body>"
				+ "    <table width=\"580\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin:0 auto\">"
				+ "        <tbody>" + "            <tr>" + "                <td height=\"40\"></td>"
				+ "            </tr>" + "            <tr>" + "                <td>"
				+ "                    <table width=\"580\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"margin:0 auto\">"
				+ "                        <tbody>" + "                            <tr>"
				+ "                                <td height=\"3\" width=\"40\" bgcolor=\"#f15f22\"></td>"
				+ "                                <td height=\"3\" width=\"500\" bgcolor=\"#f15f22\"></td>"
				+ "                                <td height=\"3\" width=\"40\" bgcolor=\"#f15f22\"></td>"
				+ "                            </tr>" + "                            <tr>"
				+ "                                <td></td>" + "                                <td>"
				+ "                                    <table width=\"500\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">"
				+ "                                        <tbody>" + "                                            <tr>"
				+ "                                                <td height=\"64\"></td>"
				+ "                                            </tr>\r\n"
				+ "                                            <tr>\r\n"
				+ "                                                <td height=\"32\" align=\"center\">"
				+ "                                                    <img src=\"https://postfiles.pstatic.net/MjAyMzAxMzFfMTM2/MDAxNjc1MTMwNzA4MTQz.4ekHeplPvME-ZTBixRZxTsjkaePDyghAprxHyAwOKVYg.F55frGA0-ENRNrKfHootl5ZBopzC4PmCtaSHNklCf4Eg.PNG.pashu8815/KakaoTalk_20230131_110358377.png?type=w773\" alt=\"LOL.EZ\" width=\"256\" height=\"128\" class=\"CToWUd\" data-bit=\"iit\">"
				+ "                                                </td>"
				+ "                                            </tr>"
				+ "                                            <tr>\r\n"
				+ "                                                <td height=\"24\">"
				+ "                                                </td>"
				+ "                                            </tr>"
				+ "                                        </tbody>" + "                                    </table>"
				+ "                                </td>\r\n" + "                                <td></td>"
				+ "                            </tr>" + "    <tr>" + "        <td></td>" + "        <td>"
				+ "            <table width=\"500\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">"
				+ "                <tbody>" + "                <tr>"
				+ "                    <td height=\"32\" style=\"font-size:24px;text-align:center\">"
				+ "                        회원가입 이메일 인증 안내\r\n" + "                    </td>" + "                </tr>"
				+ "                <tr>" + "                    <td height=\"40\"></td>" + "                </tr>"
				+ "                <tr>"
				+ "                    <td height=\"40\" style=\"line-height:1.5;font-size:16px;word-break:keep-all\">"
				+ "                        <strong style=\"font-weight:bold\">안녕하세요 TESTUSER님,</strong><br>"
				+ "                        회원님의 이메일 <a href=\"mailto:qewryy4@gmail.com\" target=\"_blank\">qewryy4@gmail.com</a>로 <a href=\"http://OP.GG\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?q=http://OP.GG&amp;source=gmail&amp;ust=1675210422515000&amp;usg=AOvVaw2Q7K4Zq6z1wC3Ivod3OVpC\">LOL.EZ</a>계정이 생성되었으며"
				+ "                        <br>메일 인증을 위해 아래 링크(URL)을 클릭하시면 회원가입이 완료됩니다." + "                    </td>"
				+ "                </tr>" + "                <tr>" + "                    <td height=\"40\"></td>"
				+ "                </tr>" + "                <tr>"
				+ "                    <td height=\"21\" style=\"font-size:18px\">" + "                        인증 링크"
				+ "                    </td>" + "                </tr>" + "                <tr>"
				+ "                    <td height=\"8\"></td>" + "                </tr>" + "                <tr>"
				+ "                    <td bgcolor=\"#f3f5f7\" style=\"padding: 16px;word-break: line-height: 1.43;/* font-size:14px; */"
				+ "                        					<a href=\"https://member.op.gg/auth/sign-up/link?key=9Ff7caJ_bPwnq_dipMdSx9Ra7LstDfY0SDxsmPZgMNUkk1WVJGSo0KDwOLS42Vpq5_9W4T2PFjA9Ts6nC5yLaw\" rel=\"noreferrer noopener\" target=\"_blank\">https://member.op.gg/auth/sign-up/link?key=9Ff7caJ_bPwnq_dipMdSx9Ra7LstDfY0SDxsmPZgMNUkk1WVJGSo0KDwOLS42Vpq5_9W4T2PFjA9Ts6nC5yLaw</a>"
				+ "                    </td>" + "                </tr>" + "                <tr>"
				+ "                    <td height=\"24\"></td>" + "                </tr>" + "                <tr>"
				+ "                    <td height=\"16\"></td>" + "                </tr>" + "                <tr>"
				+ "                    <td style=\"color:#7b858e;font-size:14px;line-height:1.43;word-break:keep-all\">"
				+ "                        개인정보 보호를 위해 인증메일 발송 후 1시간 이내에 인증이 완료되지 않으면 입력한 정보가 모두 DB에서 삭제됩니다."
				+ "                    </td>" + "                </tr>" + "                <tr>"
				+ "                    <td height=\"80\"></td>" + "                </tr>" + "                <tr>"
				+ "                    <td style=\"font-size:14px;color:#1e2022\">"
				+ "                        인증 링크(URL)가 동작하지 않는다면?" + "                    </td>"
				+ "                </tr>" + "                <tr>" + "                    <td height=\"8\"></td>"
				+ "                </tr>" + "                <tr>"
				+ "                    <td style=\"font-size:14px;color:#52595f;line-height:1.43;word-break:keep-all\">"
				+ "                        위 인증 링크를 드래그 해서 복사하신 후 웹 브라우저의 주소 입력 창에 붙여 넣어 다시 시도해 보시길 바랍니다."
				+ "                    </td>" + "                </tr>" + "                </tbody>"
				+ "            </table>" + "        </td>" + "        <td></td>" + "    </tr>" + "    <tr>"
				+ "        <td></td>" + "        <td>"
				+ "            <table width=\"500\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">"
				+ "                <tbody>" + "                    <tr>"
				+ "                        <td height=\"40\"></td>" + "                    </tr>"
				+ "                    <tr>" + "                        <td height=\"1\" bgcolor=\"#dddfe4\"></td>"
				+ "                    </tr>" + "                    <tr>"
				+ "                        <td height=\"24\"></td>" + "                    </tr>"
				+ "                    <tr>" + "                        <td align=\"left\">"
				+ "                            <img src=\"https://postfiles.pstatic.net/MjAyMzAxMzFfMjM0/MDAxNjc1MTI2NjI1NTQx.RLOM9RnMqlU2eRfLmiAI7xHz_oFLsvV_M9QaQUWjpTUg.PEJUHeAPZKqD6bMc2rSNV5yBBuNhlMCKFaQ6u-b-Xigg.PNG.pashu8815/LOGO.png?type=w773\" alt=\"OP.GG\" width=\"61\" height=\"32\" class=\"CToWUd\" data-bit=\"iit\">"
				+ "                        </td>" + "                    </tr>" + "                    <tr>"
				+ "                        <td height=\"8\"></td>" + "                    </tr>"
				+ "                    <tr>"
				+ "                        <td style=\"color:#7b858e;font-size:14px;text-align:center\">"
				+ "                            인천일보아카데미 <br>" + "                            사업자등록번호: NONE"
				+ "                        </td>" + "                    </tr>" + "                    <tr>"
				+ "                        <td height=\"24\"></td>" + "                    </tr>"
				+ "                    <tr>"
				+ "                        <td style=\"padding:12px;font-size:12px;color:#7b858e;text-align:center;border:1px solid #dddfe4\">"
				+ "                            본 메일은 발송전용 메일이오니 문의사항이 있으시면 <a href=\"mailto:service@op.gg\" style=\"color:#7b858e\" target=\"_blank\">고객센터</a>를 이용해주시기 바랍니다."
				+ "                        </td>" + "                    </tr>" + "                    <tr>"
				+ "                        <td height=\"64\"></td>" + "                    </tr>"
				+ "                </tbody>" + "            </table>" + "        </td>" + "        <td></td>"
				+ "    </tr>" + "    <tr>" + "    </tr><tr height=\"40\"></tr>" + "    <tr height=\"40\"></tr>"
				+ "    <tr height=\"40\"></tr>" + "    </tbody>" + "    </table>" + "    </td>" + "    </tr>"
				+ "    <tr>" + "        <td height=\"40\"></td>" + "    </tr>" + "    </tbody>" + "    </table>"
				+ "</body>" + "</html>";

		messageHelper.setFrom("loleasy2023@gmail.com"); // 보내는사람 생략하거나 하면 정상작동을 안함
		messageHelper.setTo("pashu0991@gmail.com"); // 받는사람 이메일
		messageHelper.setSubject("메일전송 test"); // 메일제목은 생략이 가능하다
		messageHelper.setText(emailContent, true); // 메일 내용

		mailSender.send(message);
		return 0;

	}



}
