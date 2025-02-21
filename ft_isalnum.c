/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aramos <alejandro.ramos.gua@gmail.com>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/21 13:50:31 by aramos            #+#    #+#             */
/*   Updated: 2025/02/21 13:50:42 by aramos           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isalnum(int c)
{
	unsigned char	a;

	a = (unsigned char)c;
	if ((a >= 65 && a <= 90) || (a >= 97 && a <= 122) || (a >= '0' && a <= '9'))
		return (1);
	return (0);
}
//
//int main(void)
//{
//	printf("%d", ft_isalnum(91));
//	return (0);
//}
